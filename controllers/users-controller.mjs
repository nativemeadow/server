import createHttpError from 'http-errors';
import DbService from '../config/db.mjs';
import bcrytp from 'bcryptjs';
import jwt from 'jsonwebtoken';
import { validationResult } from 'express-validator';
import { response } from 'express';
import User from '../models/user.mjs';

export const getUsers = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();
    const query = 'SELECT * FROM users';

    const result = db.getData(query);

    result
        .then((data) => {
            res.json(data);
        })
        .catch((err) => {
            console.error(err);
        });
};

export const getUser = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = 'SELECT * FROM users where id = ?';

    try {
        const result = await db.getData(query, [id]);
        res.json(result);
    } catch (err) {
        console.error(err);
    }
}

function getSignupErrors(errors) {
    console.log('Validation Errors:', errors);
    return errors.map(error => {
        return error.msg;
    });
}

export const signup = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();
    let query = 'SELECT * FROM users where username = ?';
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        const errorList = getSignupErrors(errors.array());
        const HttpError = createHttpError(400, errorList.join(', '));
        return next(HttpError);
    }

    const user = req.body;
    const newUser = new User(user);

    let existingUser;
    try {
        existingUser = await db.getData(query, [newUser.username]);
    } catch (err) {
        const error = createHttpError(500, 'Signing up failed, please try again later.');
        return next(error);
    }

    if (existingUser.length > 0) {
        const error = createHttpError(422, 'User exists already, please login instead.');
        return next(error);
    }

    query = 'SELECT * FROM users where email = ?';
    try {
        existingUser = await db.getData(query, [newUser.email]);
    } catch (err) {
        const error = createHttpError(500, 'Signing up failure, please try again later.');
        return next(error);
    }

    if (existingUser.length > 0) {
        const error = createHttpError(422, 'User email exists already, please login instead.');
        return next(error);
    }

    try {
        newUser.password = await bcrytp.hash(newUser.password, 12);
    } catch (err) {
        const error = createHttpError(500, `Error on hashing password: ${err}`);
        return next(error);
    }

    query = `INSERT INTO USERS SET ?`;

    console.log('toJSON:', newUser.toJSON());

    try {
        await db.getData(query, newUser.toJSON());
        res.status(201).json({ 'success': `New user ${user} created!` });
    } catch (err) {
        const error = createHttpError(500, `Signing up failed, please try again later. ${err}`);
        return next(error);
    }
};

export async function handleRefreshToken(req, res, next) {
    const cookies = req.cookies;
    if (!cookies?.jwt) {
        const error = createHttpError(401, 'Failed to find refresh to.');
        return next(error);
    }
    const refreshToken = cookies.jwt;

    const db = DbService.getDbServiceInstance();
    let query = 'SELECT id, username, password FROM users where refreshToken = ?';

    let existingUser;

    try {
        existingUser = await db.getData(query, [refreshToken]);
    } catch (err) {
        const error = createHttpError(500, 'Failed to find user profile, please try again later.');
        return next(error);
    }

    const user = existingUser[0];
    if (!user) {
        const error = createHttpError(403, 'Invalid credentials, could not log you in.');
        return next(error);
    }
    jwt.verify(
        refreshToken,
        process.env.REFRESH_TOKEN_SECRET,
        (err, decoded) => {
            if (err || user.username !== decoded.username) {
                const error = createHttpError(403, 'Invalid credentials, could not validate username.');
                return next(error);
            }
            const accessToken = jwt.sign(
                { userId: user.id, email: user.email },
                process.env.ACCESS_TOKEN_SECRET,
                { expiresIn: '1h' }
            );
            res.json({ accessToken })
        }
    )
}

export const login = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();
    let query = 'SELECT id, username, first_name, last_name, password FROM users where username = ?';
    const { username, password } = req.body;

    let existingUser;

    try {
        existingUser = await db.getData(query, [username]);
    } catch (err) {
        const error = createHttpError(500, 'Login in failed, please try again later.');
        return next(error);
    }

    if (existingUser.length === 0) {
        const error = createHttpError(403, 'Invalid credentials, could not log you in.');
        return next(error);
    }

    const user = existingUser[0];

    let isValidPassword = false;
    try {
        isValidPassword = await bcrytp.compare(password, user.password);
    } catch (err) {
        const error = createHttpError(500, `Error validating password: ${err}`);
        return next(error);
    }

    if (!isValidPassword) {
        const error = createHttpError(403, `Invalid credential. could not log you in`);
        return next(error);
    }

    let token;
    try {
        token = jwt.sign(
            { userId: user.id, email: user.email },
            process.env.ACCESS_TOKEN_SECRET,
            { expiresIn: '1h' }
        );
        const refreshToken = jwt.sign(
            { userId: user.id, email: user.email },
            process.env.REFRESH_TOKEN_SECRET,
            { expiresIn: '1d' }
        );
        let query = 'update users set refreshToken = ? where id = ?';
        console.log('refreshToken:', refreshToken);
        await db.getData(query, [refreshToken, user.id]);
        res.cookie('jwt', refreshToken, { httpOnly: true, sameSite: 'None', secure: true, maxAge: 24 * 60 * 60 * 1000 });
    } catch (err) {
        const error = createHttpError(500, 'logging in failed, please try again later.');
        return next(error);
    }

    res.status(201).json({
        userId: user.username,
        firstName: user.first_name,
        lastName: user.last_name,
        email: user.email,
        token: token,
    });

};

export const handleLogout = async (req, res) => {
    // On client, also delete the accessToken

    const cookies = req.cookies;
    if (!cookies?.jwt) {
        return res.sendStatus(204); //No content
    }
    const refreshToken = cookies.jwt;
    const db = DbService.getDbServiceInstance();
    let query = 'SELECT id, username, refreshToken FROM users where refreshToken = ?';

    // Is refreshToken in db?
    try {
        foundUser = await db.getData(query, [refreshToken]);
    } catch (err) {
        const error = createHttpError(500, 'logout failed');
        return next(error);
    }

    if (!foundUser) {
        res.clearCookie('jwt', { httpOnly: true, sameSite: 'None', secure: true });
        return res.sendStatus(204);
    }

    // Delete refreshToken in db
    query = 'update users set refreshToken = ? where id = ?';
    refreshToken = null;
    const result = await db.getData(query, [refreshToken, foundUser.id]);

    console.log(result);

    res.clearCookie('jwt', { httpOnly: true, sameSite: 'None', secure: true });
    res.sendStatus(204);
}

export const updateProfile = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();

    let user = authenticateUser(req, res, next);

    res.status(201).json({
        userId: user.username,
        email: user.email,
        token: token,
    });

};