const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../database');

class Doctor extends Sequelize.Model {}

Doctor.init(
    {
        DoctorId: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            },
            
          DoctorNumber: DataTypes.INTEGER,
          DoctorName: DataTypes.STRING(50),
          BirthDate: DataTypes.DATE,
          FirstEpisodeDate: DataTypes.DATE,
          LastEpisodeDate: DataTypes.DATE,
    },
    {
        sequelize,
        tableName: 'tblDoctor',
    }
);

module.exports = Doctor;