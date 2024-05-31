const Hospital = require('../models/hospital_model');

const jwt = require('jsonwebtoken');
const SECRET = "Gugu Liberato";

const bcrypt = require('bcrypt');
const saltRounds = 10;

const findAll = async(req, res) => {
    await Hospital.findAll()
    .then(hospital => {
        res.json(hospital);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findById = async(req, res) => {
    let {id} = req.body;

    await Hospital.findById(id)
    .then(hospital => {
        res.json(hospital);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
}

const findByNome = async(req, res) => {
    let {nome} = req.body;

    await Hospital.findByNome(nome)
    .then(hospital => {
        res.json(hospital);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByCep = async(req, res) => {
    let {cep} = req.body;

    await Hospital.findByCep(cep)
    .then(hospital => {
        res.json(hospital);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByCidade = async(req, res) => {
    let {cidade, estado} = req.body;

    await Hospital.findByCidade(cidade, estado)
    .then(hospital => {
        res.json(hospital);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const createHospital = async(req, res) => {
    let {nome, cep, rua, numero, bairro, cidade, estado, telefone, cnpj, email, senha} = req.body;

    const hash = bcrypt.hashSync(senha, saltRounds);

    await Hospital.createHospital(
        nome,
        cep,
        rua,
        numero,
        bairro,
        cidade,
        estado,
        telefone,
        cnpj,
        email,
        hash
    )
    .then(hospital => {
        console.log("Id do Hospital gerado automaticamente:", hospital.id);
        res.status(200)
        res.json({ mensagem : "Hospital criado com sucesso" });
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const loginHospital = async(req, res) => {
    let {email, senha} = req.body;

    const hospital = await Hospital.loginHospital(email);
    const hospitalId = hospital.id;
    const hospitalSenha = hospital.senha;
    const compara = bcrypt.compareSync(senha, hospitalSenha);

    if(compara) {
        const token = jwt.sign({hospitalId : hospitalId, Papel : "Hospital"}, SECRET, {expiresIn : 900});
        res.status(200);
        return res.json({mensagem : "Login realizado com sucesso!", auth : true, token});
    } else {
        res.status(400);
        return res.json({mensagem : "Erro ao realizar login!"});
    }
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
