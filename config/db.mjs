import mysql from 'mysql';
import dotenv from 'dotenv';

let instance = null;
dotenv.config();

// console.log(process.env);

const connection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
    port: process.env.DB_PORT
});

connection.connect((err) => {
    if (err) {
        console.log(err.message);
    }
    // console.log('db ' + connection.state);
});

class DbService {
    static getDbServiceInstance() {
        return instance ? instance : new DbService();
    }

    async getData(query, filter) {
        try {
            const params = filter ? filter : null;
            const response = await new Promise((resolve, reject) => {

                const queryStmt = connection.query(query, params, (err, results) => {
                    if (err) {
                        reject((error) => {
                            throw new Error(err.message);
                        });
                    }
                    resolve(results);
                })
            });
            console.log(response);
            return response;
        } catch (error) {
            console.log(error);
        }
    }
}

export default DbService;