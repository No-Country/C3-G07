const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para validar tarjeta y clave
const getallspecialities = () => {
    return executeQuery('SELECT nombre_especialidad FROM clinica_oftalmologica.especialidad',[]);
  }

//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  getallspecialities  
  }