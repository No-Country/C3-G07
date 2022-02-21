const express = require('express')
const morgan = require('morgan')
require('dotenv').config()
const path = require('path')
const exphbs = require('express-handlebars')

// initializations
const app = express()

//middleware
app.use(morgan('dev'))
app.use(express.static(__dirname + '/front'))
app.use(express.urlencoded({ extended: false }))
app.use(express.json())

//Public
app.use(express.static(path.join(__dirname, 'public')))

//Global Variables

//Routes
app.use(require('./routes'))
app.use(require('./routes/authentication'))
app.use('/links', require('./routes/links'))

//starting the server
app.listen(app.get('port'), () => {
  console.log('Listeng on port', app.get('port'))
})
