var express = require('express');
var router = express.Router();
const indexmodel=require('../Models/index_model');

/* GET home page. */
<<<<<<< Updated upstream
router.get('/', async (req, res, next) => {
  const specialities = await indexmodel.getallspecialities();
=======
router.get('/',  (req, res, next) => {
  const specialities =  indexmodel.getallspecialities();
>>>>>>> Stashed changes
  res.render('index', {especialidad:specialities});
});

module.exports = router;
