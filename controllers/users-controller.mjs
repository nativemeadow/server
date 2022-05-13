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
    } catch (err) {
        const error = createHttpError(500, 'Signing up failed, please try again later.');
        return next(error);
    }

    let token;
    try {
        token = jwt.sign(
            { userName: newUser.id, email: newUser.email },
            process.env.JWT_KEY,
            { expiresIn: '1h' }
        );
    } catch (err) {
        const error = createHttpError(500, `Signing up failed, please try again later. ${err}`);
        return next(error);
    }

    res.status(201).json({
        userName: newUser.username,
        email: newUser.email,
        token: token,
    });
};

export const login = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();
    let query = 'SELECT id, username, password FROM users where username = ?';
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
            { userId: user.username, email: user.email },
            process.env.JWT_KEY,
            { expiresIn: '1h' }
        );
    } catch (err) {
        const error = createHttpError(500, 'logging in failed, please try again later.');
        return next(error);
    }

    res.status(201).json({
        userId: user.username,
        email: user.email,
        token: token,
    });
};
