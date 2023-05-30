// On rassemble toutes nos fonctions qui intéragissent avec la BDD 

const client = require('./db');

const dataMapper = {

    async getAllDoctors () {
        const query = "SELECT * FROM doctor";
        // await = pause dans le code -> pour récupérer des données lourdes
        const result = await client.query(query);

        return result.rows;
    },
}

module.exports = dataMapper;