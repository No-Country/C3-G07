var express = require('express');
var router = express.Router();
const indexmodel=require('../Models/index_model');

/* GET home page. */
router.get('/', async (req, res, next) => {
  const specialities =  indexmodel.getallspecialities();
  res.render('index', {especialidad:specialities});
});

module.exports = router;
