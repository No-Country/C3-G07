const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para validar tarjeta y clave
const validateuser = (Usuario) => {
  return executeQuery('SELECT id_cliente FROM clinica_oftalmologica.cliente WHERE usuario=? AND password= ?',[Usuario.user, Usuario.password]);
  }

//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  validateuser 
  }