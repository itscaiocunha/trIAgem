const ProfSaude = require('../models/prof_saude_model');

const jwt = require('jsonwebtoken');
const SECRET = "Gugu Liberato";

const bcrypt = require('bcrypt');
const saltRounds = 10;

const findAll = async(req, res) => {
    await ProfSaude.findAll()
    .then(profSaude => {
        res.json(profSaude);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findById = async(req, res) => {
    let {id} = req.body;

    await ProfSaude.findById(id)
    .then(profSaude => {
        res.json(profSaude);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(404);
        console.error(erro);
    });
};

const findByNome = async(req, res) => {
    let {nome} = req.body;

    await ProfSaude.findByNome(nome)
    .then(profSaude => {
        res.json(profSaude);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(404);
        console.error(erro)
    });
};

const findByCrm = async(req, res) => {
    let {crm} = req.body;

    await ProfSaude.findByCrm(crm)
    .then(profSaude => {
        res.json(profSaude);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(404);
        console.error(erro)
    });
};

const findByIdHospital = async(req, res) => {
    let {hospital_idhospital} = req.body;

    await ProfSaude.findByIdHospital(hospital_idhospital)
    .then(profSaude => {
        res.json(profSaude);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(404);
        console.error(erro);
    });
};

const createProfSaude = async(req, res) => {
    let {nome, crm, hospital_idhospital, senha} = req.body;

    const hash = bcrypt.hashSync(senha, saltRounds);
    
    await ProfSaude.createProfSaude(
        nome,
        crm,
        hospital_idhospital,
        hash
    )
    .then(profSaude => {
        console.log("Id do Profissional de Saúde gerado automaticamente:", profSaude.id);
        res.status(200)
        res.json({ mensagem : "Cadastro realizado com sucesso" });
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const loginProfSaude = async(req, res) => {
    let {crm, senha} = req.body;

    const profSaude = await ProfSaude.loginProfSaude(crm);
    const profSaudeId = profSaude.idprof_saude;
    const profSaudeSenha = profSaude.senha;
    const compara = bcrypt.compareSync(senha, profSaudeSenha);

    if(compara) {
        const token = jwt.sign({profSaudeId : profSaudeId, Papel : "ProfSaude"}, SECRET, {expiresIn : 900});
        res.status(200);
        return res.json({mensagem : "Login realizado com sucesso!", auth : true, token});
    } else {
        res.status(400);
        return res.json({mensagem : "Erro ao realizar Login."})
    }
};

module.exports = {
    findAll,
    findById,
    findByNome,
    findByCrm,
    findByIdHospital,
    createProfSaude,
    loginProfSaude
}
