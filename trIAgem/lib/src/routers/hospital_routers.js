const express = require('express');
const router = express.Router();
const hospitalController = require('../controllers/hospital_controllers');

router.get('/hospitais', hospitalController.findAll);
router.get('/hospital-id', hospitalController.findById);
router.get('/hospital-nome', hospitalController.findByNome);
router.get('/hospital-cep', hospitalController.findByCep);
router.get('/hospital-cidade', hospitalController.findByCidade);
router.post('/hospital', hospitalController.createHospital);
router.post('/hospital-login', hospitalController.loginHospital);

module.exports = router;
