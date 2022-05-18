import httpError from '../models/http-error.mjs';
import DbService from '../config/db.mjs';
import { response } from 'express';

export const getHierarchy = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = `
        WITH RECURSIVE
        ancestors(parent_category, url_key, id, title, path)
        AS
            (SELECT parent_category, url_key, id, title, CAST(CONCAT('{"id": ', id, ', "title": ', '"', title, '"}') as CHAR(700))  
            FROM category WHERE parent_category IS NULL
            UNION ALL
            SELECT category.parent_category, category.url_key, category.id, category.title,
                CONCAT(ancestors.path, ', ', CONCAT('{"id": ', category.id, ', "title": ', '"', category.title, '"}'))
            FROM ancestors JOIN category ON ancestors.id = category.parent_category
            )
        SELECT parent_category, url_key, id, title, CONCAT('[', path, ']') as path FROM ancestors WHERE id = ? ORDER BY parent_category, id;
    `

    const result = db.getData(query, [id]);

    result
        .then(data => {
            const jsonData = JSON.parse(data[0].path);
            console.log(jsonData);
            res.json(jsonData);
        })
        .catch(err => {
            console.error(err);
        });

}

export const getCategories = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = 'SELECT id, title, url_key, image, category_order from category where parent_category is null order by category_order';

    const result = db.getData(query);

    result
        .then(data => {
            res.json(data);
        })
        .catch(err => {
            console.error(err);
        });
}

export const getCategory = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = "SELECT * from category where id = ? UNION SELECT * FROM `category` where parent_category = ?";

    const result = db.getData(query, [id, id]);

    result
        .then(data => {
            res.json(data);
        })
        .catch(err => {
            console.error(err);
        });
}

export const getCategoryProducts = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = `SELECT product.id, product.sku, product.title, product.description, product.image
        FROM product    
        JOIN product_category ON product_category.product = product.id
        JOIN category ON product_category.category = category.id
        WHERE category.id = ?`

    const result = db.getData(query, [id]);

    result
        .then(data => {
            res.json(data);
        })
        .catch(err => {
            console.error(err);
        });
}

export async function getProductPricing(req, res, next) {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = `SELECT price.* FROM price where price.product = ?`;

    const result = db.getData(query, [id]);

    result
        .then((data) => {
            res.json(data);
        })
        .catch((err) => {
            console.error(err);
        });
}


export const getProductsPerCategory = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = `SELECT product.id, product.sku, product.title, product.description, product.image,
            price.id as priceKey, price.title as priceTitle, price.description as priceDescr, price.price, price.size, price.units, price.coverage, price.coverage_value 
        FROM product 
        JOIN price ON price.product = product.id and product.status = 'Active'  
        JOIN product_category ON product_category.product = product.id
        JOIN category ON product_category.category = category.id
        WHERE category.id = ? order by product.title`

    const result = db.getData(query, [id]);

    result
        .then(data => {
            const productArray = [];
            let productObject = {};
            let pricingObject = {};
            data.forEach((prod, index, prodArray) => {
                if (index === 0 || prod.id !== prodArray[index - 1].id) {
                    productObject = {
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
                    title: prod.priceTitle,
                    description: prod.priceDescr,
                    price: prod.price,
                    size: prod.size,
                    units: prod.units,
                    coverage: prod.coverage,
                    coverage_value: prod.coverage_value
                };
                productObject.pricing.push(pricingObject);
            });

            res.json(productArray);
        })
        .catch(err => {
            console.error(err);
        });
}