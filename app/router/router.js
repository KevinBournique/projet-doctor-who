const express = require('express');
const doctorController = require('../controllers/tardisController');
const router = express.Router(); 

router.get('/', doctorController.arrivalPage);
router.get('/homePage', doctorController.homePage);
router.get('/doctor/list', doctorController.doctorList);



module.exports = router; 