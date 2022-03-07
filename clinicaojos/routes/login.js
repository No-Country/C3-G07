var express = require('express');
var router = express.Router();
const loginmodel=require('../Models/login_model');

/* GET login page. */
router.get('/', (req, res, next) => {
  res.render('login', {});
});

/* POST login page. */
router.post('/', async (req, res, next) => {
    const usuario = await loginmodel.validateuser(req.body);
    if(usuario.length==0){
    console.log("no existe usuairo o no se escribiron correctamente las credenciales");
    res.redirect('/login');
    }
    else{
    console.log("Usuario logueado");
    res.redirect('/reserve/'+ usuario[0].id_cliente);
    }
  });

module.exports = router;