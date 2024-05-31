const sequelize = require('sequelize');

const conn = new sequelize(
    'triagem_pi', 'root', '',{
        host : "localhost",
        dialect : "mysql"
    }
);

module.exports = conn;
