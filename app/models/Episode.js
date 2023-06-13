const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class Episode extends Sequelize.Model {}

Episode.init(
    {
    EpisodeId: {
        type: DataTypes.INTEGER,
        primaryKey: true,
      },
      SeriesNumber: DataTypes.INTEGER,
      EpisodeNumber: DataTypes.INTEGER,
      EpisodeType: DataTypes.STRING(50),
      Title: DataTypes.STRING(255),
      EpisodeDate: DataTypes.DATE,
      Notes: DataTypes.STRING(255),
    },
    {
        sequelize,
        tableName: 'tblEpisode',
    }
);

module.exports = Episode;
