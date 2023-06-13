const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class Enemy extends Sequelize.Model {}

Enemy.init(
    {
        EnemyId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            },
          EnemyName: DataTypes.STRING(100),
          Description: DataTypes.STRING(255),
    },
    {
        sequelize,
        tableName: 'tblEnemy',
    }
);

module.exports = Enemy;