import express from 'express';
import path from 'path';
import dotenv from 'dotenv';
import colors from 'colors';
import bodyParser from 'body-parser';
import cors from 'cors';

import categoryRoots from './routes/category-routes.mjs';

dotenv.config();

const app = express();
app.use(bodyParser.json());
app.use(cors());
app.use('/images', express.static(path.join('images')));

const PORT = process.env.PORT || 5001

app.use('/api/categories', categoryRoots);

app.listen(
    PORT,
    console.log(
        `Server running in ${process.env.NODE_ENV} mode on port ${PORT}`.yellow
            .bold
    )
);