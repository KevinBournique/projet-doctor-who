const Author = require('./Author');
const Companion = require('./Companion');
const Doctor = require('./Doctor');
const Enemy = require('./Enemy');
const Episode = require('./Episode');
const EpisodeEnemy = require('./EpisodeEnemy');
const EpisodeCompanion = require('./EpisodeCompanion');

Author.hasMany(Episode, {
    foreignKey: 'AuthorId' 
});

Episode.belongsTo(Author, { 
    foreignKey: 'AuthorId' 
});

Doctor.hasMany(Episode, { 
    foreignKey: 'DoctorId' 
});

Episode.belongsTo(Doctor, { 
    foreignKey: 'DoctorId' 
});

Episode.belongsToMany(Companion, {
    through: "EpisodeCompanion",
    foreignKey: 'EpisodeId'
});

Companion.belongsToMany(Episode, {
    through: "EpisodeCompanion",
    foreignKey: 'CompanionId'
  });

Episode.belongsToMany(Enemy, {
    through: "EpisodeEnemy",
    foreignKey: 'EpisodeId'
});

Enemy.belongsToMany(Episode, {
    through: "EpisodeEnemy",
    foreignKey: 'EnemyId'
});



module.exports = { Author, Companion, Doctor, Enemy, Episode, EpisodeEnemy, EpisodeCompanion };