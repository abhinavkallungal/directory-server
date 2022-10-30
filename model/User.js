const mongoose = require("mongoose");

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
    trim: true,
    lowercase: true,
  },
  email:{
    type: String,
    required: true,
    trim: true,
    lowercase: true,
  },
  password:{
    type: String,
    required: true,
    trim: true,
  },
  phone_number:{
    type: String,
    required: true,
    trim: true,
    lowercase: true,
  },
  business_name:{
    type: String,
    required: true,
    trim: true,
    lowercase: true,
  },
  business_slug:{
    type: String,
    required: true,
    trim: true,
    lowercase: true,
  },
  verified:{
    type: String,
    trim: true,
    lowercase: true,
  }
  
  
});

const User = mongoose.model("User", userSchema);

module.exports = User;