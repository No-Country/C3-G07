var express = require('express');
var router = express.Router();
//const reservaexitosamodel=require('../Models/reservaexitosa_model');

/* GET login page. */
router.get('/', async (req, res, next) => {
//   const usuario= await reservemodel.getdatauser(2);
//   const cuerdas=1;
   //res.send (usuario);
  //res.send (req.params.id);
  res.render('reservaexitosa', {nombre_paciente:"Isbaela"});
});

module.exports = router;