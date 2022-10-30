
const { body, validationResult } = require('express-validator');
const Response = require('./Response')

module.exports = {
    signUpValidation:(req,res,next)=>{
        body('name').isLength({ min: 2 })
        body('email').isEmail(),
        body('password').isLength({ min: 2 })
        body('phone_number').isLength({ min: 2 })
        body('business_name').isLength({ min: 2 })

        const errors = validationResult(req);
        if(!errors.isEmpty()) {
           return  Response.Fail({res,status:400,success:false,message:errors.join('\n'),errors: errors.array()});
        } 
        next()
    

    },
    loginValidation:(req,res,next)=>{
     
        body('password').isLength({ min: 2 })
        body('phone_number').isLength({ min: 2 })

        const errors = validationResult(req);
        if(!errors.isEmpty()) {
           return  Response.Fail({res,status:400,success:false,message:errors.join('\n'),errors: errors.array()});
        } 
        next()
    

    }
}