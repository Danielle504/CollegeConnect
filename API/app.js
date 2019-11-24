const express = require('express')
const uuid = require('uuid/v4')
var morgan = require('morgan')
const session = require('express-session')
const FileStore = require('session-file-store')(session)
const bodyParser = require('body-parser')
const passport = require('passport')
const mysql = require('mysql');
const LocalStrategy = require('passport-local').Strategy
const bcrypt = require('bcrypt-nodejs')

const users = [
  {id: '2f24vvg', email: 'test@test.com', password: 'password'}
]

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



 

// configure passport.js to use the local strategy
passport.use(new LocalStrategy(
  { usernameField: 'email', passwordField: 'password' },
  (email, password, done) => {
    if(!email || !password ) {
      return done(null, false);
    }
    
    connection.query(`SELECT * FROM User WHERE User.user_email='` + email + `'`, [email], function(err, rows) {
      console.log(err); console.log(rows);
      
      if (err) return done(null, null)
          
      if(!rows.length){
        return done(null, false)
      }
      
      var dbPassword  = rows[0].user_passhash
      
      if(!(dbPassword.localeCompare(password))){
        console.log('YEUIYKJFHKJDHFKJDHFKJD')
        return done(null, {id: rows[0].user_id, email: email, password: password})
      }
      
      return done(null, rows[0])
    });
  }
))

// tell passport how to serialize the user
passport.serializeUser((user, done) => {
  done(null, user.id)
})

passport.deserializeUser((id, done) => {
  console.log('Inside deserializeUser callback')
  console.log(`The user id passport saved in the session file store is: ${id}`)
  
  connection.query(`SELECT * FROM User WHERE User.user_id='` + id + `'`, [id], function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) return done(null, null)
      
    if(!rows.length){
      return done(null, false)
    }
  
    var dbPassword  = rows[0].user_passhash
  
    return done(null, {id: rows[0].user_id, email: rows[0].email, password: dbPassword})
  });
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

app.get(['/adminrequests', '/admin_requests.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/admin_requests.html')
})

app.get(['/about', '/about.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/about.html')
})

app.get(['/contact', '/contact.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/contact.html')
})

app.get(['/courses', '/courses.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/courses.html')
})

app.get(['/coursesingle', '/course-single.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/course-single.html')
})

app.get('/createevent', sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/event.html')
})

app.post('/createevent', (req, res, next) => {
    console.log(req.body)
  
  let name = req.body.name
  let privacy = req.body.privacy
  
  if(!name || !privacy) {
    res.redirect('/')
    return;
  }
  
  let sql = `
    INSERT INTO Event
    VALUES (
        NULL,
        '` + name + `',
        '` + privacy + `'
    );`
    console.log(sql)
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) {
      res.redirect('/')
      return;
    }
    
    console.log('Event inserted')
    console.log(rows.insertId)
  });
})

app.get(['/event', '/blog-single.html'], sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/blog-single.html')
})

app.get('/getEvent', (req, res, next) => {
  console.log(req.body)
  
  let event_id = req.body.event_id
  
  if(!event_id) {
    res.redirect('/')
    return;
  }
  
  let sql = `
  SELECT *
  FROM Event
  WHERE Event.event_id='` + event_id + `'`
  console.log(sql)
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) {
      res.redirect('/')
      return;
    }
    
    console.log('Retrieved event data')
    return rows[0];
  });
})

app.get('/createrso', sessionChecker, (req, res) => {
  res.sendFile(__dirname + '/public/RSO.html')
})

app.post('/createrso', (req, res, next) => {
    console.log(req.body)
  
  let name = req.body.name
  let email1 = req.body.email1
  let email2 = req.body.email2
  let email3 = req.body.email3
  let email4 = req.body.email4
  let email5 = req.body.email5
  
  if(!name || !email1 || !email2 || !email3 || !email4 || !email5) {
    res.redirect('/')
    return;
  }
  
  let sql = `
    INSERT INTO RSO_Request
    VALUES (
        NULL,
        '` + name + `',
        '` + email1 + `',
        '` + email2 + `',
        '` + email3 + `',
        '` + email4 + `',
        '` + email5 + `'
    );`
    console.log(sql)
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) {
      res.redirect('/')
      return;
    }
    
    console.log('RSO Request inserted')
    console.log(rows.insertId)
  });
})

app.get(['/register', '/register.html'], (req, res) => {
  if (req.isAuthenticated()) {
    res.redirect('/dashboard')
  } else {
    res.sendFile(__dirname + '/public/register.html')
  }
})

app.post(['/register', '/register.html'], (req, res, next) => {
  console.log(req.body)
  
  let email = req.body.email
  let password = req.body.password
  let passwordre = req.body.passwordre
  let firstname = req.body.firstname
  let lastname = req.body.lastname
  let university = req.body.university
  
  if(!email || !password || !passwordre || password.localeCompare(passwordre) || !firstname || !lastname) {
    res.redirect('/register')
    return;
  }
  
  let sql = `
    INSERT INTO User
    VALUES (
        NULL,
        '` + email + `',
        '` + passwordre + `',
        '0000000000000000',
        NULL,
        '` + firstname + `',
        '` + lastname + `'
    );`
    console.log(sql)
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) {
      res.redirect('/')
      return;
    }
    
    console.log('User inserted')
    console.log(rows.insertId)
    let userId = rows.insertId
    
    let sql = `
    SELECT *
    FROM University
    WHERE University.university_name='` + university + `'`
    connection.query(sql, function(err, rows) {
      console.log(err); console.log(rows);
    
      if (err || !rows) {
        res.redirect('/')
        return;
      }
      
      console.log(rows[0].university_id)
      console.log('University found')
      
      let sql = `
      INSERT INTO Student
      VALUES (NULL, ` + userId + `, ` + rows[0].university_id + `);`
      connection.query(sql, function(err, rows) {
        console.log(err); console.log(rows);
      
        if (err) {
          res.redirect('/')
          return;
        }
        
        console.log('Student inserted')
      });
    });
    
    res.redirect('/login')
  });
})

app.get(['/logout', '/logout.html'], (req, res) => {
  req.logout()
  res.redirect('/')
})

app.post('/sendRSOData', (req, res, next) => {
  let rso_name = req.body.rso_name
  let rso_approved = req.body.rso_approved
  
  if(!name || !rso_approved) {
    res.redirect('/')
    return;
  }
  
  if (rso_approved == '1') {
    let sql = `
    INSERT INTO RSO
    VALUES (
        NULL,
        '` + rso_name + `'
    );`
    console.log(sql)
    connection.query(sql, function(err, rows) {
      console.log(err); console.log(rows);
    
      if (err) {
        res.redirect('/')
        return;
      }
      
      console.log('RSO inserted')
      console.log(rows.insertId)
    });
  }
  
  let sql = `
  DELETE FROM RSO_Request
  WHERE RSO_Request.rsorequest_name='` + rso_name + `';`
  console.log(sql)
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err) {
      res.redirect('/')
      return;
    }
    
    console.log('RSO request deleted')
  });
})

app.get('/getEventList', (req, res, next) => {
  let sql = `
  SELECT *
  FROM Event`
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err || !rows) {
      res.redirect('/')
      return;
    }
    
    return rows[0];
  })
})

app.get('/getRSOList', (req, res, next) => {
  let sql = `
  SELECT *
  FROM RSO`
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err || !rows) {
      res.redirect('/')
      return;
    }
    
    return rows[0];
  })
})

app.get('/getRSORequestList', (req, res, next) => {
  let sql = `
  SELECT *
  FROM RSO_Request`
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err || !rows) {
      res.redirect('/')
      return;
    }
    
    return rows[0];
  })
})

app.get('/getMemberRequestList', (req, res, next) => {
  let sql = `
  SELECT *
  FROM RSO_Member_Request`
  connection.query(sql, function(err, rows) {
    console.log(err); console.log(rows);
  
    if (err || !rows) {
      res.redirect('/')
      return;
    }
    
    return rows[0];
  })
})

module.exports = app