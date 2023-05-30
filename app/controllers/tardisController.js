const dataMapper = require('../database/dataMapper');

const tardisController = {
    async arrivalPage (req, res){
        
        res.render('arrival',);
    },

    async homePage (req, res){
        res.render('homePage');
    },

    async doctorList (req, res) {

        const doctors = await dataMapper.getAllDoctors();

        res.render('doctorList', { doctors });
    },

    async doctorDetails (req, res) {
        const numero = req.params.numero;

        const doctor = await dataMapper.getOneDoctor(numero);

        res.render('doctorDetails', { doctor });
    }
};

module.exports = tardisController;