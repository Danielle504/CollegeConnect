const express = require('express');
const session = require('express-session');
const mysql = require('mysql');
const uuid = require('uuid/v4');

const app = express();
const db_config = require('./db_config');

let connection = mysql.createConnection({
    host: db_config.host,
    user: db_config.user,
    password: db_config.password,
    database: db_config.database
});

connection.connect(function(err) {
  if (err) {
    return console.error('error: ' + err.message);
  }
 
  console.log('Connected to the MySQL server.');
});

// import morgan package
const morgan = require('morgan');
//use it
app.use(morgan('dev'));

// import body-parser
const bodyParser = require('body-parser');
// let's use it
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());

// defining routes
const ordersRoutes = require('./routes/orders')
app.use('/orders', ordersRoutes);

var cookieParser = require('cookie-parser');
var session = require('express-session');


app.use((req, res, next) => {
    req.header('Access-Controll-Allow-Orgin','*');
    req.header(
        'Access-Controll-Allow-Headers',
        'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    );
    if(req.method === 'OPTIONS'){
        res.header('Access-Control-Allow-Methods','PUT, POST, PATCH, DELETE, GET');
        return res.status(200).json({});
    }
    next();
});

module.exports = app;