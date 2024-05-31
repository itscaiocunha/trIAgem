const sequelize = require('sequelize');
const conn = require('../database/connection');

const Atendimento = conn.define('atendimentos', { // nomeConst = conexaoComBanco.FuncaoDefineTabela('nomeTabela', {colunasTabela})
    idatendimento : {
        type : sequelize.INTEGER,
        autoIncrement : true,
        primaryKey : true
    },
    dt_atendimento : {
        type : sequelize.DATE,
        allowNull : false,
    },
    sintomas : {
        type : sequelize.STRING,
        allowNull : false
    },
    laudo : {
        type : sequelize.STRING,
        allowNull : false
    },
    medicamento_ministrado : {
        type : sequelize.STRING,
        allowNull : false
    },
    nivel_emergencia : {
        type : sequelize.STRING,
        allowNull : false
    }
});

const findAll = () => {
    return Atendimento.findAll();
};

const findById = (id) => {
    return Atendimento.findByPk(id);
};

const findByDateTime = (dt_atendimento) => {
    return Atendimento.findAll({
        where : {dt_atendimento}
    });
};

const findBySintomas = (sintomas) => {
    return Atendimento.findAll({
        where : {sintomas}
    });
};

const findByLaudo= (laudo) => {
    return Atendimento.findAll({
        where : {laudo}
    });
};

const findByMedicamentoMinistrado = (medicamento_ministrado) => {
    return Atendimento.findAll({
        where : {medicamento_ministrado}
    });
};

const findByNivelEmergencia = (nivel_emergencia) => {
    return Atendimento.findAll({
        where : {nivel_emergencia}
    });
};

const createAtendimento = (dt_atendimento, sintomas, laudo, medicamento_ministrado, nivel_emergencia) => {
    return Atendimento.create({
        dt_atendimento : dt_atendimento,
        sintomas : sintomas,
        laudo : laudo,
        medicamento_ministrado : medicamento_ministrado,
        nivel_emergencia : nivel_emergencia
    });
};

const updateSintomas = (id, sintomas) => {
    return Atendimento.update(
        {sintomas : sintomas},
        {where : {idatendimento : id}}
    );
};

const updateLaudo = (id, laudo) => {
    return Atendimento.update(
        {laudo : laudo},
        {where : {idatendimento : id}}
    );
};

const updateMedicamentoMinistrado = (id, medicamento_ministrado) => {
    return Atendimento.update(
        {medicamento_ministrado : medicamento_ministrado},
        {where : {idatendimento : id}}
    );
};

const updateNivelEmergencia = (id, nivel_emergencia) => {
    return Atendimento.update(
        {nivel_emergencia : nivel_emergencia},
        {where : {idatendimento : id}}
    );
};

module.exports = {
    findAll,
    findById,
    findByDateTime,
    findBySintomas,
    findByLaudo,
    findByMedicamentoMinistrado,
    findByNivelEmergencia,
    createAtendimento,
    updateSintomas,
    updateLaudo,
    updateMedicamentoMinistrado,
    updateNivelEmergencia
}
