const express = require('express')
const morgan = require('morgan')
require('dotenv').config()
const path = require('path')

// initializations
const app = express()
app.set('view engine', 'ejs')

//middleware
app.use(morgan('dev'))
app.use(express.urlencoded({ extended: false }))
app.use(express.json())

//Routes
app.use('/', require('./routes'))

//starting the server
app.listen(8080, () => {
  console.log('Listeng on port http://localhost:8080')
})
