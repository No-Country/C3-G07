var express = require('express');
var router = express.Router();
const reservemodel=require('../Models/reserve_model');

/* GET login page. */
router.get('/:id', async (req, res, next) => {
   const usuario= await reservemodel.getdatauser(req.params.id);
   const specialities = await reservemodel.getallspecialities();
   const doctors = await reservemodel.getalldoctors();
   //res.send(doctors);
   const datosunificados={
      "usuariol": usuario,
      "especialidadesl": specialities,
      "doctoresl": doctors
   };
   //res.send(datosunificados.usuariol);
   //res.send(datosunificados.usuairol);
   res.render('reserve', datosunificados);
});

module.exports = router;