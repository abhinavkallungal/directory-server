const express = require('express');
const router =express.Router();
const authValidation =require('../middleware/auth.validation');

const auth =require('../controllers/auth')

router.post('/onbording',authValidation.signUpValidation,  auth.Signup)
router.post('/login',authValidation.loginValidation,  auth.Login)


module.exports =router;