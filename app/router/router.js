const express = require('express');
const tardisController = require('../controllers/tardisController');
const router = express.Router(); 

router.get('/', tardisController.arrivalPage);
router.get('/homePage', tardisController.homePage);
router.get('/doctor/list', tardisController.getAllDoctors);
router.get('/doctor/companion', tardisController.getAllCompanions);
router.get('/doctor/details/:numero', tardisController.getOneDoctor);



module.exports = router; 