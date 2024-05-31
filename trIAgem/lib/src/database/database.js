const conn = require('./connection');
const db = conn.authenticate()
    .then(() => {
        console.log('\n Banco de Dados conectado com êxito!');
    })
    .catch(erro => {
        console.error(erro);
        console.log('Não foi possível estabelecer uma conexão com o Banco de Dados.');
    });

module.exports = db;
