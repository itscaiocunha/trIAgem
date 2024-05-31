const usuarioModel = require('../models/usuario_model');

const jwt = require('jsonwebtoken');
const SECRET = "Gugu Liberato";

const bcrypt = require('bcrypt');
const saltRounds = 10;

const findAll = async(req, res) => {
    await usuarioModel.findAll()
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findById = async(req, res) => {
    let {id} = req.body;

    await usuarioModel.findById(id)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByNome = async(req, res) => {
    let {nome} = req.body;

    await usuarioModel.findByNome(nome)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findBySobrenome = async(req, res) => {
    let {sobrenome} = req.body;

    await usuarioModel.findBySobrenome(sobrenome)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByNascimento = async(req, res) => {
    let {dt_nascimento} = req.body;

    await usuarioModel.findByNascimento(dt_nascimento)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByCpf = async(req, res) => {
    let {cpf} = req.body;

    await usuarioModel.findByCpf(cpf)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findBySus = async(req, res) => {
    let {cartao_sus} = req.body;

    await usuarioModel.findBySus(cartao_sus)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
}

const findByEndereco = async(req, res) => {
    let {cep, rua, numero, bairro, cidade, estado} = req.body;

    await usuarioModel.findByEndereco(cep, rua, numero, bairro, cidade, estado)
    .then(usuarios => {
        res.json(usuarios);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
}

const createUsuario = async(req, res) => {
    let {nome, sobrenome, dt_nascimento, cpf, cartao_sus, telefone, telefone_emergencia, cep, rua, numero, bairro, cidade, estado, alergias, doencas_cronicas, email, senha, peso, altura, tp_sanguineo, sexo} = req.body;

    const hash = bcrypt.hashSync(senha, saltRounds);

    await usuarioModel.createUsuario(
        nome,
        sobrenome,
        dt_nascimento,
        cpf,
        cartao_sus,
        telefone,
        telefone_emergencia,
        cep,
        rua,
        numero,
        bairro,
        cidade,
        estado,
        alergias,
        doencas_cronicas,
        email,
        hash,
        peso,
        altura,
        tp_sanguineo,
        sexo
    ).then((usuario) =>{
        console.log("Id do usuário gerado automaticamente:", usuario.id);
        res.status(200)
        res.json({ mensagem : "Cadastro realizado com sucesso" });
    }).catch((erro) => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const loginUsuario = async(req, res) => {
    let {email, senha} = req.body;
    
    const usuario = await usuarioModel.loginUsuarioEmail(email);
    console.log (usuario.idusuario);
    const usuarioId = usuario.idusuario;
    const usuarioSenha = usuario.senha;
    const compara = bcrypt.compareSync(senha, usuarioSenha);
    
    if (compara) {
       const token = jwt.sign({usuarioId : usuarioId, Papel : "Usuario"}, SECRET, {expiresIn : 900});
       return res.json({auth : true, token})
    } else {
        return res.json({mensagem : "Senha incorreta"});
    };
};

const updateTelefone = async (req, res) => {

    let { id, telefone } = req.body;

    await usuarioModel.updateTelefone(id, telefone)
        .then(usuario => {
            res.json({mensagem : "Telefone alterado com sucesso."});
            res.status(200);
            console.log("Telefone alterado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateTelefoneEmergencia = async (req, res) => {

    let { id, telefone_ctt } = req.body;

    await usuarioModel.updateTelefoneEmergencia(id, telefone_ctt)
        .then(usuario => {
            res.json({mensagem : "Telefone de emergência alterado com sucesso."});
            res.status(200);
            console.log("Telefone de emergência alterado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateEndereco = async (req, res) => {

    let { id, cep, rua, numero, bairro, cidade, estado} = req.body;

    await usuarioModel.updateEndereco(id, cep, rua, numero, bairro, cidade, estado)
        .then(usuario => {
            res.json({mensagem : "Endereço alterado com sucesso."});
            res.status(200);
            console.log("Endereço alterado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateAlergias = async (req, res) => {

    let { id, alergias } = req.body;

    await usuarioModel.updateTelefoneEmergencia(id, alergias)
        .then(usuario => {
            res.json({mensagem : "Alergias atualizadas com sucesso."});
            res.status(200);
            console.log("Alergias atualizadas com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateDoencasCronicas = async (req, res) => {

    let { id, doencas_cronicas } = req.body;

    await usuarioModel.updateTelefoneEmergencia(id, doencas_cronicas)
        .then(usuario => {
            res.json({mensagem : "Doenças Crônicas atualizadas com sucesso."});
            res.status(200);
            console.log("Doenças Crônicas atualizadas com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateSenha = async (req, res) => {

    let { id, senha } = req.body;

    await usuarioModel.updateSenha(id, senha)
        .then(usuario => {
            res.json({mensagem : "Senha atualizadas com sucesso."});
            res.status(200);
            console.log("Senha atualizada com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updatePeso = async (req, res) => {

    let { id, peso } = req.body;

    await usuarioModel.updatePeso(id, peso)
        .then(usuario => {
            res.json({mensagem : "Peso atualizado com sucesso."});
            res.status(200);
            console.log("Peso atualizado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
};

const updateAltura = async (req, res) => {

    let { id, altura } = req.body;

    await usuarioModel.updateAltura(id, altura)
        .then(usuario => {
            res.json({mensagem : "ALtura atualizada com sucesso."});
            res.status(200);
            console.log("Altura atualizada com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
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
    loginUsuario,
    updateTelefone,
    updateEndereco,
    updateTelefoneEmergencia,
    updateAlergias,
    updateDoencasCronicas,
    updateSenha,
    updatePeso,
    updateAltura
}
