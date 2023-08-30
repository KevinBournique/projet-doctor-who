const express = require('express');
const tardisController = require('../controllers/tardisController');
const router = express.Router(); 

router.get('/', tardisController.arrivalPage);
router.get('/homePage', tardisController.homePage);
router.get('/doctor/', tardisController.getAllDoctors);
router.get('/doctor/:id', tardisController.getOneDoctor);
router.get('/companion/', tardisController.getAllCompanions);
router.get('/companion/:id', tardisController.getOneCompanion);
router.get('/enemy/', tardisController.getAllEnemies);
router.get('/enemy/:id', tardisController.getOneEnemy);



module.exports = router; 