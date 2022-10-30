const Response= require('../middleware/Response')
const UserModal = require('../model/User')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')


module.exports = {
    Signup:async (req,res)=>{
        try {

            const {name,email,password,phone_number,business_name} =req.body;

            let findUser  = await UserModal.findOne({email})            
            if(findUser) return res.status(200).json({messgae:'email Alredy exist '})
            
            findUser = await UserModal.findOne({phone_number})
            if(findUser) return res.status(200).json({messgae:'phone number Alredy exist '})
             
            findUser =await UserModal.findOne({business_name})
            if(findUser) return res.status(200).json({messgae:'business name Alredy exist '})


            const hashpassword = await bcrypt.hash(password, 10)
            let createduser =  await UserModal.create({name,email,password:hashpassword,phone_number,business_name,business_slug:business_name})
                
            if(createduser){
                let token = await jwt.sign({ data: findUser._id}, 'secret', { expiresIn: '1h' });
                return res.status(200).json({message: 'Signup success',data:{user:createduser,token}})
            }else{
                return res.status(500).json({message: 'something wrong'})
            }
      
        } catch (error) {
            return res.status(400).json({message: error})
        }
    },
    Login: async(req,res)=>{
        try {
            const {password,phone_number} =req.body;

            let findUser = await UserModal.findOne({phone_number})
            if(!findUser) return  res.status(400).json({ message: "invalid phonenumber" })

            let isPasswordCorrect = await bcrypt.compare(password, findUser.password)
            if (!isPasswordCorrect) return res.status(400).json({ message: "invalid Password" })
            
            let token =  jwt.sign({ data: findUser._id}, 'secret', { expiresIn: '1h' });
            return res.status(200).json({message: 'Login Success',data:{user:findUser,token}})

        } catch (error) {
            return res.status(400).json({message: error})

        }

    }
}