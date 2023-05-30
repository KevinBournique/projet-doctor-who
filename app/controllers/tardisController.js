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
    }
};

module.exports = tardisController;