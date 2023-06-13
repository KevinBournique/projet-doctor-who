const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class EpisodeEnemy extends Sequelize.Model {}

EpisodeEnemy.init(
    {
        EpisodeEnemyId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
    },
    {
        sequelize,
        tableName: 'tblEpisodeEnemy',
    }
);

module.exports = EpisodeEnemy;