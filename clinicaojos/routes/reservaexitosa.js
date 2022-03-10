var express = require('express');
var router = express.Router();
const reservaexitosamodel=require('../Models/reservaexitosa_model');

/* GET login page. */
router.get('/:id', async (req, res, next) => {
  const datoscita= await reservaexitosamodel.datoscita(req.params.id);
  const medicocita= await reservaexitosamodel.medicocita(datoscita[0].medicos_id);
  const especialidadcita= await reservaexitosamodel.especialidadcita(datoscita[0].especialidad_id_especialidad);
  const pacientecita= await reservaexitosamodel.getdatauser(datoscita[0].cliente_id);
  const dataunified={
    "paciente": pacientecita[0].nombre_paciente,
    "especialidad": especialidadcita[0].nombre_especialidad,
    "doctor": medicocita[0].nombre_apellido_medico,
    "fecha": datoscita[0].fecha_cita.toDateString(),
    "hora": datoscita[0].horario
 };
  res.render('reservaexitosa', dataunified);
});

module.exports = router;