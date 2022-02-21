const express = require('express')
const morgan = require('morgan')
require('dotenv').config()
const path = require('path')
const exphbs = require('express-handlebars')

// initializations
const app = express()

//setting
app.set('port', process.env.PORT || 8080)

//app.set('views', path.join(__dirname, 'views'))

// app.engine(
//   '.hbs',
//   exphbs.create({
//     defaultLayout: 'main',
//     LayoutsDir: path.join(app.get('views'), 'layouts'),
//     partialsDir: path.join(app.get('views'), 'partials'),
//     extname: '.hbs',
//     helpers: require('./lib/handlebars')
//   }).engine
// )
// app.set('views engine', '.hbs')

//middleware
app.use(morgan('dev'))
app.use(express.static(__dirname + '/front'))
app.use(express.urlencoded({ extended: false }))
app.use(express.json())

//Global Variables

//Routes
app.use(require('./routes'))
app.use(require('./routes/authentication'))
app.use('/links', require('./routes/links'))

//Public
app.use(express.static(path.join(__dirname, 'public')))

//starting the server
app.listen(app.get('port'), () => {
  console.log('Listeng on port', app.get('port'))
})
