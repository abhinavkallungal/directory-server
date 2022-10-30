const express = require("express");

require('dotenv').config()

var morgan = require('morgan')
const cors = require('cors')

const bodyParser = require('body-parser')

const AuthRouter = require('./routers/auth')
const db = require('./config/connection');





const app = express()

const PORT = process.env.PORT


app.use(cors());

app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(bodyParser.raw({ type: 'application/octet-stream', limit: '100mb' }));

app.use(express.json());


app.use('/auth', AuthRouter);

app.use(morgan('tiny'))

db.connect((err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("db connected");
  }
})



app.listen(PORT, (err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("server started at ", PORT);
  }
})







