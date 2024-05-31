const sequelize = require('sequelize');
const conn = require('../database/connection');

const ProfSaude = conn.define('prof_saudes', {
    idprof_saude : {
        type : sequelize.INTEGER,
        primaryKey : true,
        autoIncrement : true
    },  
    nome : {
        type : sequelize.STRING,
        allowNull : false
    },
    crm : {
        type : sequelize.STRING,
        allowNull : false
    },
    hospital_idhospital : {
        type : sequelize.INTEGER,
        allowNull : false
    },
    senha : {
        type : sequelize.STRING,
        allowNull : false
    }
});

const findAll = () => {
    return ProfSaude.findAll({
        attributes : ['idprof_saude','nome', 'crm', 'hospital_idhospital']
    })
};

const findById = (id) => {
    return ProfSaude.findByPk(id, {
        attributes : ['idprof_saude','nome', 'crm', 'hospital_idhospital']
    })
};

const findByNome = (nome) => {
    return ProfSaude.findAll({
        where : {nome},
        attributes : ['idprof_saude','nome', 'crm', 'hospital_idhospital']
    })
};

const findByCrm = (crm) => {
    return ProfSaude.findAll({
        where : {crm},
        attributes : ['idprof_saude','nome', 'crm', 'hospital_idhospital']
    })
};

const findByIdHospital = (hospital_idhospital) => {
    return ProfSaude.findAll({
        where : {hospital_idhospital},
        attributes : ['idprof_saude','nome', 'crm', 'hospital_idhospital']
    })
};

const createProfSaude = (nome, crm, hospital_idhospital, senha) => {
    return ProfSaude.create({
        nome : nome,
        crm : crm,
        hospital_idhospital : hospital_idhospital,
        senha : senha
    })
};

const loginProfSaudeCrm = (crm) => {
    return ProfSaude.findOne({
        where : {crm}
    }, {
        attributes : 'senha'
    })
};

module.exports = {
    findAll,
    findById,
    findByNome,
    findByCrm,
    findByIdHospital,
    createProfSaude,
};
