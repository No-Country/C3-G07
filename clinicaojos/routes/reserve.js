var express = require('express');
var router = express.Router();
const reservemodel=require('../Models/reserve_model');


/* GET reserve page. */
router.get('/:id', async (req, res, next) => {
   const usuariologueado= await reservemodel.getdatauser(req.params.id);
   const specialities = await reservemodel.getallspecialities();
   const doctors = await reservemodel.getalldoctors();
   //res.send(doctors);
   const datosunificados={
      "usuariol": usuariologueado,
      "especialidadesl": specialities,
      "doctoresl": doctors
   };
   res.render('reserve', datosunificados);
});

/* POST reserva cita. */
router.post('/validacion', async (req, res, next) => {
   const rptacita = await reservemodel.newcita(req.body);
   res.redirect('/reservaexitosa/'+rptacita[0].id);
});



module.exports = router;