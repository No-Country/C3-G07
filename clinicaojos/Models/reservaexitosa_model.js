const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para conseguir datos de la cita
const datoscita = (idcita) => {
  return executeQuery('SELECT id_cita, fecha_cita, horario, cobertura_cita, direccion_clinica, cliente_id, medicos_id, especialidad_id_especialidad, observaciones_cita  FROM clinica_oftalmologica.cita WHERE id_cita=?',[idcita]);
  }

//Metodo para conseguir nombre del medico segun id
const medicocita = (idmedico) => {
  return executeQuery('SELECT id_medicos, nombre_medico, apellidos_medico, CONCAT(nombre_medico," ",apellidos_medico) as nombre_apellido_medico FROM clinica_oftalmologica.medicos WHERE id_medicos=?',[idmedico]);
  }

//Metodo para conseguir especialidad segun id
const especialidadcita = (idespecialidad) => {
  return executeQuery('SELECT id_especialidad, nombre_especialidad FROM clinica_oftalmologica.especialidad WHERE id_especialidad=?',[idespecialidad]);
  }

  //Metodo para conseguir datos del usuario segun id
const getdatauser = (idUsuario) => {
  return executeQuery('SELECT id_cliente, nombre_paciente FROM clinica_oftalmologica.cliente WHERE id_cliente=?',[idUsuario]);
  }


//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  datoscita, medicocita, especialidadcita, getdatauser
  }