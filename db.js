const { Client } = require('pg');

const conString = "postgres://postgres:postgres@localhost:5432/api_movies";
const client = new Client(conString);
client.connect();

process.on('exit', ()=>{
    client.end();
});

module.exports = client;