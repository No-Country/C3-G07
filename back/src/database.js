const mysql= require('mysql')
const {promisify} = require('util')
const {database}= require('./keys')

//const pool = mysql.createPool(database)

const conexion = mysql.createConnection(database)

conexion.connect((error)=>{
    if(error){
        console.error('El error de conexion es: ' + error)
    } else {
        console.log('¡Conectado a la DB MySQL!')
    }
})

//Promisify conexion querys
conexion.query = promisify(conexion.query) 

module.exports = conexion