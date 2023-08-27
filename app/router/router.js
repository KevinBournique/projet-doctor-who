const express = require('express');
const tardisController = require('../controllers/tardisController');
const router = express.Router(); 

router.get('/', tardisController.arrivalPage);
router.get('/homePage', tardisController.homePage);
router.get('/doctor/list', tardisController.getAllDoctors);
router.get('/doctor/details/:id', tardisController.getOneDoctor);
router.get('/companion/list', tardisController.getAllCompanions);
router.get('/companion/details/:id', tardisController.getOneCompanion);



module.exports = router; 