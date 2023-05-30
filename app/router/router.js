const express = require('express');
const tardisController = require('../controllers/tardisController');
const router = express.Router(); 

router.get('/', tardisController.arrivalPage);
router.get('/homePage', tardisController.homePage);
router.get('/doctor/list', tardisController.doctorList);
router.get('/doctor/details/:numero', tardisController.doctorDetails);



module.exports = router; 