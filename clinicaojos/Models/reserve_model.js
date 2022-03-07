const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para conseguir datos del usuario logueado
const getdatauser = (idUsuario) => {
    return executeQuery('SELECT id_cliente, usuario, nombre_paciente, apellido_paterno,apellido_materno FROM clinica_oftalmologica.cliente WHERE id_cliente=?',[idUsuario]);
    }

//Metodo para conseguir todas las especialidades de la clinica
const getallspecialities = () => {
    return executeQuery('SELECT nombre_especialidad FROM clinica_oftalmologica.especialidad',[]);
  }

//Metodo para conseguir lista de medicos de la clinica
const getalldoctors = () => {
    //return executeQuery('SELECT nombre_medico, apellidos_medico FROM clinica_oftalmologica.medicos',[]);
    return executeQuery('SELECT id_medicos, nombre_medico, apellidos_medico, CONCAT(nombre_medico," ",apellidos_medico) as nombre_apellido_medico FROM clinica_oftalmologica.medicos',[]);
  }

//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  getdatauser, getallspecialities, getalldoctors

  }