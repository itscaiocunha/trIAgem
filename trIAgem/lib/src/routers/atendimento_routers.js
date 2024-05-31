const express = require('express');
const router = express.Router();
const atendimentoController = require('../controllers/atendimento_controllers');
const middlewaresAuth = require('../middlewares/Auth');

router.get('/atendimentos', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findAll);
router.get('/atendimento-id', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findById);
router.get('/atendimento-data', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findByDateTime);
router.get('/atendimento-sintomas', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findBySintomas);
router.get('/atendimento-laudo', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findByLaudo);
router.get('/atendimento-medicamento-ministrado', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findByMedicamentoMinistrado);
router.get('/atendimento-nivel-emergencia', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.findByNivelEmergencia);
router.post('/atendimento', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.createAtendimento);
router.put('/atendimento-sintomas', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.updateSintomas);
router.put('/atendimento-laudo', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.updateLaudo);
router.put('/atendimento-medicamento-ministrado', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.updateMedicamentoMinistrado);
router.put('/atendimento-nivel-emergencia', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), atendimentoController.updateNivelEmergencia);

module.exports = router;