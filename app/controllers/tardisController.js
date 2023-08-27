const { Author, Doctor, Companion, Enemy, Episode } = require('../models');

const tardisController = {
    // Page animation
    async arrivalPage (req, res){
        res.render('arrival',);
    },

    // Page d'accueil
    async homePage (req, res){
        res.render('homePage');
    },

    // Page liste des doctors
    async getAllDoctors (req, res) {
        try {
            const doctors = await Doctor.findAll();

            res.render('doctorList', { doctors });

        } catch (error) {
            console.log(error);
            res.status(500).send('Server Error');
        }
    },

    // Page details d'un doctor
    async getOneDoctor (req, res) {
        try{
            const { id } = req.params

            const doctor = await Doctor.findByPk(id, 
                { where: 
                { DoctorId: id } });

            if (doctor) {
                res.render('doctorDetails', { doctor });
                    error: 'Doctor introuvable !'
            }
            
        } catch (error) {
            console.log(error);
            res.status(500).send('Server Error');
        }
    },

    // Page liste des companions
    async getAllCompanions (req, res){
        try {
            const companions = await Companion.findAll();

            res.render('companionList', { companions });
        } catch (error) {
            console.log(error);
            res.status(500).send('Server Error');
        }
    },

        // Page details d'un companion
        async getOneCompanion (req, res) {
            try{
                const { id } = req.params
    
                const companion = await Companion.findByPk(id, 
                    { where: 
                    { CompanionId: id } });
    
                if (companion) {
                    res.render('companionDetails', { companion });
                        error: 'Companion introuvable !'
                }
                
            } catch (error) {
                console.log(error);
                res.status(500).send('Server Error');
            }
        },

    // Page liste des enemies
    async getAllEnemies (req, res){
        try {
            const enemies = await Enemy.findAll();

            res.render('', { enemies });
        } catch (error) {
            console.log(error);
            res.status(500).send('Server Error');
        }
    },

    // Page liste des épisode
    async getAllEpisodes (req, res){
        try {
            const episodes = await Episode.findAll();

            res.render('', { episodes });
        } catch (error) {
            console.log(error);
            res.status(500).send('Server Error');
        }
    },

};

module.exports = tardisController;