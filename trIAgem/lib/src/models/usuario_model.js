const sequelize = require('sequelize');
const conn = require('../database/connection');

const Usuario = conn.define('usuarios', {
    idusuario : {
        type : sequelize.INTEGER,
        autoIncrement : true,
        primaryKey : true
    },
    nome : {
        type : sequelize.STRING,
        allowNull : false
    },
    sobrenome : {
        type : sequelize.STRING,
        allowNull : false
    },
    dt_nascimento : {
        type : sequelize.DATEONLY,
        allowNull : false
    },
    cpf : {
        type : sequelize.STRING,
        allowNull: false
    },
    cartao_sus : { 
        type: sequelize.STRING,
        allowNull : false
    },
    telefone : {
        type : sequelize.STRING,
        allowNull : false
    },
    telefone_ctt : {
        type : sequelize.STRING,
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
    alergias : {
        type : sequelize.STRING,
        allowNull : false
    },
    doencas_cronicas : {
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
    },
    peso : {
        type : sequelize.FLOAT
    },
    altura : {
        type : sequelize.STRING
    },
    tp_sanguineo : {
        type : sequelize.STRING
    },
    sexo : {
        type : sequelize.STRING
    }
});

const findAll = () => {
    return Usuario.findAll({
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findById = (id) => {
    return Usuario.findByPk(id,{
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findByNome = (nome) => {
    return Usuario.findAll({
        where : {nome}
    },{
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findBySobrenome = (sobrenome) => {
    return Usuario.findAll({
        where : {sobrenome}
    }, {
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findByNascimento = (dt_nascimento) => {
    return Usuario.findAll({
        where : {dt_nascimento}
    }, {
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findByCpf = (cpf) => {
    return Usuario.findAll({
        where : {cpf}
    }, {
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findBySus = (cartao_sus) => {
    return Usuario.findAll({
        where : {cartao_sus}
    }, {
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const findByEndereco = (cep, rua, numero, bairro, cidade, estado) => {
    return Usuario.findAll({
        where : {cep, rua, numero, bairro, cidade, estado}
    }, {
        attributes : ['idusuario', 'nome', 'sobrenome', 'dt_nascimento', 'cpf', 'cartao_sus', 'telefone', 'telefone_ctt', 'cep', 'rua', 'numero', 'bairro', 'cidade', 'estado', 'alergias', 'doencas_cronicas', 'peso', 'altura', 'tp_sanguineo', 'sexo']
    })
};

const createUsuario = (nome, sobrenome, dt_nascimento, cpf, cartao_sus, telefone, telefone_ctt, cep, rua, numero, bairro, cidade, estado, alergias, doencas_cronicas, email, senha, peso, altura, tp_sanguineo, sexo) => {
    return Usuario.create({
        nome : nome,
        sobrenome : sobrenome,
        dt_nascimento : dt_nascimento,
        cpf : cpf,
        cartao_sus : cartao_sus,
        telefone : telefone,
        telefone_ctt : telefone_ctt,
        cep : cep,
        rua : rua,
        numero : numero,
        bairro : bairro,
        cidade : cidade,
        estado : estado,
        alergias : alergias,
        doencas_cronicas : doencas_cronicas,
        email : email,
        senha : senha,
        peso : peso,
        altura : altura,
        tp_sanguineo : tp_sanguineo,
        sexo : sexo
    })
};

const loginUsuarioEmail = (email) => {
    return Usuario.findOne({
        where : {email}
    }, {
        attributes : ['senha']
    });
};

const updateTelefone = (id, telefone) => {
    return Usuario.update(
        {telefone : telefone},
        {where : {idusuario : id}} 
    )
};

const updateTelefoneEmergencia = (id, telefone_ctt) => {
    return Usuario.update(
        {telefone_ctt : telefone_ctt},
        {where : {idusuario : id}} 
    )
};

const updateEndereco = (id, cep, rua, numero, bairro, cidade, estado) => {
    return Usuario.update(
        {
            cep : cep,
            rua :rua,
            numero : numero,
            bairro : bairro,
            cidade : cidade,
            estado : estado
        },
        {where : {idusuario : id}}
    )
};

const updateAlergias = (id, alergias) => {
    return Usuario.update(
        {alergias : alergias},
        {where : {idusuario : id}} 
    )
};

const updateDoencasCronicas = (id, doencas_cronicas) => {
    return Usuario.update(
        {doencas_cronicas : doencas_cronicas},
        {where : {idusuario : id}} 
    )
};

const updateSenha = (id, senha) => {
    return Usuario.update(
        {senha : senha},
        {where : {idusuario : id}}
    )
};

const updatePeso = (id, peso) => {
    return Usuario.update(
        {peso : peso},
        {where : {idusuario : id}}
    )
};

const updateAltura = (id, altura) => {
    return Usuario.update(
        {altura : altura},
        {where : {idusuario : id}}
    )
};

module.exports = {
    findAll,
    findById,
    findByNome,
    findBySobrenome,
    findByNascimento,
    findByCpf,
    findBySus,
    findByEndereco,
    createUsuario,
    loginUsuarioEmail,
    updateTelefone,
    updateTelefoneEmergencia,
    updateEndereco,
    updateAlergias,
    updateDoencasCronicas,
    updateSenha,
    updatePeso,
    updateAltura
};
