const express = require('express');
var morgan = require('morgan')
const cors = require('cors')
require('dotenv').config()


const AuthRouter = require('./router/auth')
const IndexRouter = require('./router/index')
const db = require('./config/connection');

const app = express()

app.use(cors());

app.use(express.urlencoded({ limit: '50mb', extended: true }));
app.use(express.json({ limit: '50mb' }));

app.use(morgan('tiny'))




db.connect().then((res)=>{
    console.log(res)
}).catch(err=>{
    console.error(err)
})

app.use('/', IndexRouter);
app.use('/auth', AuthRouter);



app.listen(4000,(err)=>{
    try {
        if(err) throw new Error('server not listening on port 4000')
        console.log('listening on 4000')  
    } catch (error) {
        console.log(error)
    }
})