const Atendimento = require('../models/atendimento_model');

const findAll = async(req, res) => {
    await Atendimento.findAll()
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findById = async(req, res) => {
    let {id} = req.body;

    await Atendimento.findById(id)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByDateTime = async(req, res) => {
    let {dt_atendimento} = req.body;

    await Atendimento.findByDateTime(dt_atendimento)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findBySintomas = async(req, res) => {
    let {sintomas} = req.body;

    await Atendimento.findBySintomas(sintomas)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByLaudo = async(req, res) => {
    let {laudo} = req.body;

    await Atendimento.findByLaudo(laudo)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByMedicamentoMinistrado = async(req, res) => {
    let {medicamento_ministrado} = req.body;

    await Atendimento.findByMedicamentoMinistrado(medicamento_ministrado)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const findByNivelEmergencia = async(req, res) => {
    let {nivel_emergencia} = req.body;

    await Atendimento.findByNivelEmergencia(nivel_emergencia)
    .then(atendimento => {
        res.json(atendimento);
        res.status(200);
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const createAtendimento = async(req, res) => {
    let {dt_atendimento, sintomas, laudo, medicamento_ministrado, nivel_emergencia} = req.body;

    await Atendimento.createAtendimento(
        dt_atendimento,
        sintomas,
        laudo,
        medicamento_ministrado,
        nivel_emergencia
    )
    .then(atendimento => {
        console.log("Id do Atendimento gerado automaticamente:", atendimento.id);
        res.status(200)
        res.json({ mensagem : "Atendimento criado com sucesso" });
    })
    .catch(erro => {
        res.sendStatus(204);
        console.error(erro);
    });
};

const updateSintomas = async(req, res) => {
    let {id, sintomas} = req.body;

    await Atendimento.updateSintomas(id, sintomas)
        .then(atendimento => {
            res.json({mensagem : "Sintomas atualizado com sucesso."});
            res.status(200);
            console.log("Sintomas atualizado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        });
};

const updateLaudo = async(req, res) => {
    let {id, laudo} = req.body;

    await Atendimento.updateLaudo(id, laudo)
        .then(atendimento => {
            res.json({mensagem : "Laudo atualizado com sucesso."});
            res.status(200);
            console.log("Laudo atualizado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        });
};

const updateMedicamentoMinistrado = async(req, res) => {
    let {id, medicamento_ministrado} = req.body;

    await Atendimento.updateMedicamentoMinistrado(id, medicamento_ministrado)
        .then(atendimento => {
            res.json({mensagem : "Medicamentos ministrados atualizados com sucesso."});
            res.status(200);
            console.log("Medicamentos ministrados atualizados com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        });
};

const updateNivelEmergencia = async(req, res) => {
    let {id, nivel_emergencia} = req.body;

    await Atendimento.updateNivelEmergencia(id, nivel_emergencia)
        .then(atendimento => {
            res.json({mensagem : "Nivel de emergencia alterado com sucesso."});
            res.status(200);
            console.log("Nivel de emergencia alterado com sucesso!");
        }).catch(erro => {
            res.sendStatus(400);
            console.error(erro)
        })
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
};
