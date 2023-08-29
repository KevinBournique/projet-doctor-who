const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(process.env.PG_URL, {
    // logging => montre les requêtes dans le terminal
    // false: ne pas voir les requêtes
    // déclarer en fonction: voir les requêtes
    logging: false,
    define: {
        updatedAt: 'updated_at',
        createdAt: 'created_at',
    },

});

module.exports = sequelize;