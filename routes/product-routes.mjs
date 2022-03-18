import express from 'express';
import { getProduct } from '../controllers/product-controller.mjs';

const router = express.Router();

router.get('/:id', (req, res, next) => {
    console.log('get specific categories');
    getProduct(req, res, next);
});

export default router;