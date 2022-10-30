const mongoose = require('mongoose');
var MongoClient = require('mongodb').MongoClient;

const uri = "mongodb://0.0.0.0:27017/directory";


function connect() {
    return new Promise(function (resolve, reject) {
        
    
          mongoose.connect(uri, {
            useNewUrlParser: true, 
            useUnifiedTopology: true 
            }, err => {
            if(err) throw err;
            console.log('Connected to MongoDB!!!')
            });        
        mongoose.Promise = global.Promise;
        
        const db = mongoose.connection;
        
        db.on('connected', () => {
            resolve('Mongoose default connection done')
        })
        
        db.on('error', (error) => {
            reject('Mongoose default connection error : ' + error)
        })
    })
}


module.exports = {connect}

