const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class EpisodeCompanion extends Sequelize.Model {}

EpisodeCompanion.init(
    {
        EpisodeCompanionId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
          },
    },
    {
        sequelize,
        tableName: 'tblEpisodeCompanion',
    }
);

module.exports = EpisodeCompanion;