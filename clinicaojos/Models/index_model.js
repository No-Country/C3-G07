const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para conseguir todas las especialidades de la clinica
const getallspecialities = () => {
    return executeQuery('SELECT nombre_especialidad FROM clinica_oftalmologica.especialidad',[]);
  }

//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  getallspecialities  
  }