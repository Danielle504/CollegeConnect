const express = require('express')
const uuid = require('uuid/v4')
const morgan = require('morgan')
const cookieParser = require('cookie-parser')
const session = require('express-session')
const FileStore = require('session-file-store')(session)
const bodyParser = require('body-parser')
const passport = require('passport')
const LocalStrategy = require('passport-local').Strategy
const bcrypt = require('bcrypt-nodejs')

const users = [
  {id: '2f24vvg', email: 'test@test.com', password: 'password'}
]

// invoke an instance of express application.
var app = express()

app.set('port', 3100);

// set morgan to log info about our requests for development use.
//app.use(morgan('dev'))

// initialize body-parser to parse incoming parameters requests to req.body
app.use(bodyParser.urlencoded({ extended: true }))

// initialize cookie-parser to allow us access the cookies stored in the browser. 
app.use(cookieParser())

app.use(express.static(__dirname + '/public'));

// initialize express-session to allow us track the logged-in user across sessions.
app.use(session({
    key: 'user_sid',
    secret: 'somerandonstuffs',
    resave: false,
    saveUninitialized: false,
    cookie: {
        expires: 600000
    }
}))


// This middleware will check if user's cookie is still saved in browser and user is not set, then automatically log the user out.
// This usually happens when you stop your express server after login, your cookie still remains saved in the browser.
app.use((req, res, next) => {
    if (req.cookies.user_sid && !req.session.user) {
        res.clearCookie('user_sid')        
    }
    next()
})


// middleware function to check for logged-in users
var sessionChecker = (req, res, next) => {
    if (req.session.user && req.cookies.user_sid) {
        res.redirect('/dashboard')
    } else {
        next()
    }    
}


// route for Home-Page
app.get('/', sessionChecker, (req, res) => {
    res.redirect('/login')
})


// route for user registration
app.route('/register')
    .get(sessionChecker, (req, res) => {
        res.sendFile(__dirname + '/public/register.html')
    })
    .post((req, res) => {
        // register
    })


// route for user Login
app.route('/login')
    .get(sessionChecker, (req, res) => {
        res.sendFile(__dirname + '/public/login.html')
    })
    .post((req, res) => {
        var email = req.body.email,
            password = req.body.password
        
        const user = users[0] 
        if(email === user.email && password === user.password) {
            console.log('Login successful')
          
            req.session.user = user
            res.redirect('/dashboard')
        } else {
            res.redirect('/login')
        }
    })


// route for user's dashboard
app.get('/dashboard', (req, res) => {
    if (req.session.user && req.cookies.user_sid) {
        res.sendFile(__dirname + '/public/dashboard.html')
    } else {
        res.redirect('/login')
    }
})


// route for user logout
app.get('/logout', (req, res) => {
    if (req.session.user && req.cookies.user_sid) {
        res.clearCookie('user_sid')
        res.redirect('/')
    } else {
        res.redirect('/login')
    }
})


// route for handling 404 requests(unavailable routes)
app.use(function (req, res, next) {
  res.status(404).send("Sorry can't find that!")
})

module.exports = app