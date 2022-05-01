import createError from 'http-errors';
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

export const signup = async (req, res, next) => {
    const db = DbService.getDbServiceInstance();
    let query = 'SELECT * FROM users where username = ?';
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        const error = errors['errors'][0].msg;
        const HttpError = createError(422, error);
        return next(HttpError);
    }

    const user = req.body;
    const newUser = new User(user);

    let existingUser;
    try {
        existingUser = await db.getData(query, [newUser.username]);
    } catch (err) {
        const error = createError(500, 'Signing up failed, please try again later.');
        return next(error);
    }

    if (existingUser.length > 0) {
        const error = createError(422, 'User exists already, please login instead.');
        return next(error);
    }

    try {
        newUser.password = await bcrytp.hash(newUser.password, 12);
    } catch (err) {
        const error = createError(500, `Error on hashing password: ${err}`);
        return next(error);
    }

    query = `INSERT INTO USERS SET ?`;

    console.log('toJSON:', newUser.toJSON());

    try {
        await db.getData(query, newUser.toJSON());
    } catch (err) {
        const error = createError(500, 'Signing up failed, please try again later.');
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
        const error = createError(500, `Signing up failed, please try again later. ${err}`);
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
    let query = 'SELECT id, username, password FROM users where email = ?';
    const { email, password } = req.body;

    let existingUser;

    try {
        existingUser = await db.getData(query, [email]);
    } catch (err) {
        const error = createError(500, 'Login in failed, please try again later.');
        return next(error);
    }

    if (!existingUser) {
        const error = createError(403, 'Invalid credentials, could not log you in.');
        return next(error);
    }

    let isValidPassword = false;
    try {
        isValidPassword = await bcrytp.compare(password, existingUser.password);
    } catch (err) {
        const error = createError(500, `Error validating password: ${err}`);
        return next(error);
    }

    if (!isValidPassword) {
        const error = createError(403, `Invalid credential. could not log you in`);
        return next(error);
    }

    let token;
    try {
        token = jwt.sign(
            { userId: existingUser.username, email: existingUser.email },
            process.env.JWT_KEY,
            { expiresIn: '1h' }
        );
    } catch (err) {
        const error = createError(500, 'logging in failed, please try again later.');
        return next(error);
    }

    res.status(201).json({
        userId: existingUser.username,
        email: existingUser.email,
        token: token,
    });
};
