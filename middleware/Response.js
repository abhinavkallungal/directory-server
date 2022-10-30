module.exports ={
    Success:({res,status,success,data,message})=>{
        console.log(status,success,data,message)
        return res.status(200).json({status,success,data,message});
    },
    Fail:({res,status=400,success=false,message,errors=[]})=>{
        console.log(status,success,data,message)

        return res.status(status).json({status,success,errorMessage:message,errors});
    }
}