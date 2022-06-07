import httpError from '../models/http-error.mjs';
import DbService from '../config/db.mjs';
import { response } from 'express';

export const getProduct = async (req, res, next) => {
    const { categoryId, id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = `SELECT category.id as categoryId, category.title as categoryTitle,  product.id, product.sku, product.title, product.description, product.image,
        price.id as priceKey, price.sku as priceSku, price.title as priceTitle, price.description as priceDescr, price.image as priceImage, price.price, price.size, price.units, price.coverage, price.coverage_value 
        FROM product 
        JOIN price ON price.product = product.id   
        JOIN product_category ON product_category.product = product.id
        JOIN category ON product_category.category = category.id
        WHERE category.id = ? and product.id = ?`

    console.log('Category:', categoryId, 'Product:', id);
    const result = db.getData(query, [categoryId, id]);

    result
        .then(data => {
            const productArray = [];
            let productObject = {};
            let pricingObject = {};
            data.forEach((prod, index, prodArray) => {
                if (index === 0 || prod.id !== prodArray[index - 1].id) {
                    productObject = {
                        categoryId: prod.categoryId,
                        categoryTitle: prod.categoryTitle,
                        id: prod.id,
                        sku: prod.sku,
                        title: prod.title,
                        description: prod.description,
                        image: prod.image,
                        pricing: [],
                    };
                    productArray.push(productObject);
                }
                pricingObject = {
                    key: prod.priceKey,
                    sku: prod.priceSku,
                    title: prod.priceTitle,
                    description: prod.priceDescr,
                    image: prod.priceImage,
                    price: prod.price,
                    size: prod.size,
                    units: prod.units,
                    coverage: prod.coverage,
                    coverage_value: prod.coverage_value
                };
                productObject.pricing.push(pricingObject);
            });

            res.json(productObject);
        })
        .catch(err => {
            console.error(err);
        });
}