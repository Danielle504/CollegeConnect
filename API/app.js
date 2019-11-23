const express = require('express')
const uuid = require('uuid/v4')
var morgan = require('morgan')
const session = require('express-session')
const FileStore = require('session-file-store')(session)
const bodyParser = require('body-parser')
const passport = require('passport')
const LocalStrategy = require('passport-local').Strategy
const bcrypt = require('bcrypt-nodejs')

const users = [
  {id: '2f24vvg', email: 'test@test.com', password: 'password'}
]

// configure passport.js to use the local strategy
passport.use(new LocalStrategy(
  { usernameField: 'email' },
  (email, password, done) => {
    /*axios.get(`http://localhost:5000/users?email=${email}`)
    .then(res => {
      const user = res.data[0]
      if (!user) {
        return done(null, false, { message: 'Invalid credentials.\n' })
      }
      if (!bcrypt.compareSync(password, user.password)) {
        return done(null, false, { message: 'Invalid credentials.\n' })
      }
      return done(null, user)
    })
    .catch(error => done(error))*/
    
    console.log('Inside local strategy callback')
    // here is where you make a call to the database
    // to find the user based on their username or email address
    // for now, we'll just pretend we found that it was users[0]
    const user = users[0] 
    if(email === user.email && password === user.password) {
      console.log('Local strategy returned true')
      return done(null, user)
    }
    
    console.log('Local strategy returned false')
    return done(null, null)
  }
))

// tell passport how to serialize the user
passport.serializeUser((user, done) => {
  done(null, user.id)
})

passport.deserializeUser((id, done) => {
  /*axios.get(`http://localhost:5000/users/${id}`)
  .then(res => done(null, res.data) )
  .catch(error => done(error, false))*/
  
  console.log('Inside deserializeUser callback')
  console.log(`The user id passport saved in the session file store is: ${id}`)
  const user = users[0].id === id ? users[0] : false 
  done(null, user)
})

// create the server
const app = express()

app.use(express.static(__dirname + '/public/static'));

// add & configure middleware
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(session({
  genid: (req) => {
    return uuid() // use UUIDs for session IDs
  },
  store: new FileStore(),
  secret: '96cb8c7c5c11175aad83b092ef6bf6b9d6db3978fcb1c1371a5171b55e711a492f8d6a6af52fd14ccb8335712a6e6aa14d4cd688a29fce850b1f6374758eaefe',
  resave: false,
  saveUninitialized: true,
  cookie: {
    expires: 600000
  }
}))
app.use(passport.initialize())
app.use(passport.session())

// middleware function to check for logged-in users
var sessionChecker = (req, res, next) => {
    if (req.isAuthenticated()) {
        next()
    } else {
        res.redirect('/')
    }    
}

// create the homepage route at '/'
app.get(['/', '/index.html'], (req, res) => {
  res.sendFile(__dirname + '/public/index.html')
})

// create the login get and post routes
app.get(['/login', '/login.html'], (req, res) => {
  res.sendFile(__dirname + '/public/login.html')
})

app.post(['/login', '/login.html'], (req, res, next) => {
  passport.authenticate('local', (err, user, info) => {
    if(info) {return res.send(info.message)}
    if (err) { return next(err) }
    if (!user) { return res.redirect('/login.html') }
    req.login(user, (err) => {
      if (err) { return next(err) }
      return res.redirect('/dashboard.html')
    })
  })(req, res, next)
})

app.get(['/dashboard', '/dashboard.html'], sessionChecker, (req, res) => {
    res.sendFile(__dirname + '/public/dashboard.html')
})

app.get('/createevent', sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/event.html')
})

app.get('/createrso', sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/RSO.html')
})

app.get(['/register', '/register.html'], (req, res) => {
  if (req.isAuthenticated()) {
    res.redirect('/dashboard')
  } else {
    res.sendFile(__dirname + '/public/register.html')
  }
})

app.get('/logout', (req, res) => {
  req.logout()
  res.redirect('/')
})

module.exports = app