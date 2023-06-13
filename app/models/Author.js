const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class Author extends Sequelize.Model {}

Author.init(
    {
        AuthorId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
          },
          
          AuthorName: {
            type: DataTypes.STRING(50),
            allowNull: false,
          },
    },
    {
        sequelize,
        tableName: 'tblAuthor',
    }
);

module.exports = Author;
