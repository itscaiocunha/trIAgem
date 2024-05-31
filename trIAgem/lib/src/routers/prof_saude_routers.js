const express = require('express');
const router = express.Router();
const profSaudeController = require('../controllers/prof_saude_controller');
const middlewaresAuth = require('../middlewares/Auth');

router.get('/profs-saude', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.findAll);
router.get('/prof-saude-id', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.findById);
router.get('/prof-saude-nome', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.findByNome);
router.get('/prof-saude-crm', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.findByCrm);
router.get('/prof-saude-hospital', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.findByIdHospital);
router.post('/prof-saude', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Hospital']), profSaudeController.createProfSaude);
router.post('/prof-saude-login', profSaudeController.loginProfSaude);

module.exports = router;
