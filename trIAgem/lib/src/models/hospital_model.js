const sequelize = require('sequelize');
const conn = require('../database/connection');

const Hospital = conn.define('hospitals', {
    idhospital : {
        type : sequelize.INTEGER,
        primaryKey : true,
        autoIncrement : true
    },
    nome : {
        type : sequelize.STRING,
        allowNull : false
    },
    cep : {
        type : sequelize.STRING,
        allowNull : false
    },
    rua : {
        type : sequelize.STRING,
        allowNull : false
    },
    numero : {
        type : sequelize.STRING,
        allowNull : false
    },
    bairro : {
        type : sequelize.STRING,
        allowNull : false
    },
    cidade : {
        type : sequelize.STRING,
        allowNull : false
    },
    estado : {
        type : sequelize.STRING,
        allowNull : false
    },
    telefone : {
        type : sequelize.STRING,
        allowNull : false
    },
    cnpj : {
        type : sequelize.STRING,
        allowNull : false
    },
    email : {
        type : sequelize.STRING,
        allowNull : false
    },
    senha : {
        type : sequelize.STRING,
        allowNull : false
    }
});

const findAll = () => {
    return Hospital.findAll({
        attributes : ['idhospital','nome', 'cep', 'rua', 'numero', 'bairro','cidade', 'estado', 'telefone']
    })
};

const findById = (id) => {
    return Hospital.findByPk(id, {
        attributes : ['idhospital','nome', 'cep', 'rua', 'numero', 'bairro','cidade', 'estado', 'telefone']
    })
};

const findByNome = (nome) => {
    return Hospital.findAll({
        where : {nome},
        attributes : ['idhospital','nome', 'cep', 'rua', 'numero', 'bairro','cidade', 'estado', 'telefone']
    })
};

const findByCep = (cep) => {
    return Hospital.findAll({
        where : {cep},
        attributes : ['idhospital','nome', 'cep', 'rua', 'numero', 'bairro','cidade', 'estado', 'telefone']
    })
};

const findByCidade = (cidade, estado) => {
    return Hospital.findAll({
        where : {cidade, estado},
        attributes : ['idhospital','nome', 'cep', 'rua', 'numero', 'bairro','cidade', 'estado', 'telefone']
    })
};

const createHospital = (nome, cep, rua, numero, bairro, cidade, estado, telefone, cnpj, email, senha) => {
    return Hospital.create({
        nome : nome,
        cep : cep,
        rua : rua,
        numero : numero,
        bairro : bairro,
        cidade : cidade,
        estado : estado,
        telefone : telefone,
        cnpj : cnpj,
        email : email,
        senha : senha
    })
};

const loginHospital = (email) => {
    return Hospital.findOne({
        where : {email}
    }, {
        attributes : ['senha']
    })
};

module.exports = {
    findAll,
    findById,
    findByNome,
    findByCep,
    findByCidade,
    createHospital,
    loginHospital
}
