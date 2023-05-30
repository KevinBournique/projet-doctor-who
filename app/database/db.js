const { Client } = require('pg');

const client = new Client(process.env.PG_URL || "postresql://doctor:doctor@localhost:5432/doctor");

client.connect();

module.exports = client;