import express from 'express';
import { check } from 'express-validator';
import { getUsers, signup, login } from '../controllers/users-controller.mjs'

const router = express.Router();

router.get('/', (req, res, next) => {
    console.log('get all users');
    getUsers(req, res, next);
});

router.post(
    '/signup',
    [
        check('username')
            .not()
            .isEmpty(),
        check('email')
            .normalizeEmail()
            .isEmail(),
        check('password').isLength({ min: 6 }),
        check(
            'passwordConfirmation',
            'passwordConfirmation field must have the same value as the password field',
        )
            .exists()
            .custom((value, { req }) => value === req.body.password)
            .withMessage('passwordConfirmation field must have the same value as the password field'),
        check('firstName')
            .not()
            .isEmpty(),
        check('lastName')
            .not()
            .isEmpty(),
        check('phone')
            .not()
            .isEmpty(),
        check('address')
            .not()
            .isEmpty(),
        check('city')
            .not()
            .isEmpty(),
        check('state')
            .not()
            .isEmpty(),
        check('postalCode')
            .not()
            .isEmpty(),
    ],
    signup
);

router.post('/login', login);

export default router;