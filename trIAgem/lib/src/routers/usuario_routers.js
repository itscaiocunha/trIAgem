const express = require('express');
const router = express.Router();
const usuarioController = require('../controllers/usuario_controller');
const middlewaresAuth = require('../middlewares/Auth');

router.get('/usuarios', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findAll);
router.get('/usuario-id', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude', 'Usuario']), usuarioController.findById);
router.get('/usuario-nome', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findByNome);
router.get('/usuario-sobrenome', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findBySobrenome);
router.get('/usuario-nascimento', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findByNascimento);
router.get('/usuario-cpf', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findByCpf);
router.get('/usuario-cartao-sus', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findBySus);
router.get('/usuario-endereco', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.findByEndereco);
router.post('/usuario', usuarioController.createUsuario);
router.post('/usuario-login', usuarioController.loginUsuario);
router.put('/usuario-telefone', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Usuario']), usuarioController.updateTelefone);
router.put('/usuario-telefone-emergencia', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Usuario']), usuarioController.updateTelefoneEmergencia);
router.put('/usuario-endereco', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Usuario']), usuarioController.updateEndereco);
router.put('/usuario-alergias',  (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['Usuario']), usuarioController.updateAlergias);
router.put('/usuario-doencas-cronicas',  (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.updateDoencasCronicas);
router.put('/usuario-senha', (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.updateSenha);
router.put('/usuario-peso',  (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.updatePeso);
router.put('/usuario-altura',  (req, res, next) =>  middlewaresAuth.verifyJwt(req, res, next, ['ProfSaude']), usuarioController.updateAltura);

module.exports = router;
