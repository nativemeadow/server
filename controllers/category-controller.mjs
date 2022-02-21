import httpError from '../models/http-error.mjs';
import DbService from '../config/db.mjs';
import { response } from 'express';

export const getCategories = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const parentId = id || ' is null';
    const query = 'SELECT id, title, url_key, image, category_order from category where parent_category' + parentId + ' order by category_order';

    const result = db.getCategoryData(query);

    result
        .then(data => {
            res.json({ data });
        })
        .catch(err => {
            console.error(err);
        });
}

export const getCategory = async (req, res, next) => {
    const { id } = req.params;
    const db = DbService.getDbServiceInstance();
    const query = "SELECT * from category where id = ? UNION SELECT * FROM `category` where parent_category = ?";

    const result = db.getCategoryData(query, [id, id]);

    result
        .then(data => {
            res.json({ data });
        })
        .catch(err => {
            console.error(err);
        });
}
