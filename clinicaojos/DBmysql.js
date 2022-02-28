const mysql = require('mysql2');
//console.log('configuro base de datos');

const pool = mysql.createPool({ 
    host: '127.0.0.1',
    user: 'root',
    password: '1234',
    port: 3306,
    database: 'clinica_oftalmologica'

});

//Variable global : 
global.db = pool;