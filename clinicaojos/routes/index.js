var express = require('express');
var router = express.Router();
const indexmodel=require('../Models/index_model');

<<<<<<< Updated upstream
/* GET home page. */
router.get('/', async (req, res, next) => {
=======
/* GET home page. .*/
router.get('/',  (req, res, next) => {
>>>>>>> Stashed changes
  const specialities =  indexmodel.getallspecialities();
  res.render('index', {especialidad:specialities});
});

module.exports = router;
