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
    "especialidad": specialities,
    "doctoresl": doctors,
    "fecha": fecha,
    "hora": hora
 };
  //res.send({a:datoscita[0].id_cita});
  //res.send(pacientecita[0]);
  // res.render('reservaexitosa', dataunified);
});

module.exports = router;