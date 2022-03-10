const { executeQuery, executeQueryOne } = require('../helpers')

//Metodo para conseguir datos del usuario logueado
const getdatauser = (idUsuario) => {
    return executeQuery('SELECT id_cliente, usuario, nombre_paciente, apellido_paterno,apellido_materno FROM clinica_oftalmologica.cliente WHERE id_cliente=?',[idUsuario]);
    }

//Metodo para conseguir todas las especialidades de la clinica
const getallspecialities = () => {
    return executeQuery('SELECT id_especialidad, nombre_especialidad FROM clinica_oftalmologica.especialidad',[]);
  }

//Metodo para conseguir lista de medicos de la clinica
const getalldoctors = () => {
    //return executeQuery('SELECT nombre_medico, apellidos_medico FROM clinica_oftalmologica.medicos',[]);
    return executeQuery('SELECT id_medicos, nombre_medico, apellidos_medico, CONCAT(nombre_medico," ",apellidos_medico) as nombre_apellido_medico FROM clinica_oftalmologica.medicos',[]);
  }

//Metodo para escribir en la DB la cita 
const newcita = async (datoscita) => {
   await executeQuery('insert into cita (fecha_cita, horario, cobertura_cita, direccion_clinica, cliente_id, medicos_id, especialidad_id_especialidad, observaciones_cita) values(?, ?, ?, ?, ?, ?, ?, ?)',[datoscita.fecha, datoscita.hora, datoscita.cobertura, 'Calle Argentina 715',parseInt(datoscita.idcliente,10), parseInt(datoscita.profesional,10), parseInt(datoscita.especialidad,10),'Venir 15 minutos ante']);
   
  return executeQuery('SELECT MAX(id_cita) AS id FROM cita',[]);
}



//?Exportar funcion getAll, getById, getByEdad y demas.
module.exports = {
  getdatauser, getallspecialities, getalldoctors, newcita

  }