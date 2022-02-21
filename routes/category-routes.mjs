import express from 'express';
import { getCategories, getCategory } from '../controllers/category-controller.mjs';

const router = express.Router();

router.get('/', (req, res, next) => {
    console.log('get categories');
    getCategories(req, res, next);
});

router.get('/:id', (req, res, next) => {
    console.log('get specific categories');
    getCategory(req, res, next);
});


export default router;