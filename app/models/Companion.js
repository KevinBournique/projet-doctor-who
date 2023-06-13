const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class Companion extends Sequelize.Model {}

Companion.init(
    {
        CompanionId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            },
          CompanionName: {
            type: DataTypes.STRING(50),
            allowNull: false,
          },
          WhoPlayed: DataTypes.STRING(50),
    },
    {
        sequelize,
        tableName: 'tblCompanion',
    }
);

module.exports = Companion;