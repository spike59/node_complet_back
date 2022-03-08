//require('dotenv').config('./config/development/.env');
require('./helpers/string.helper');
//StringHelpers.initialize();
const db = require('./DB_tools/db_connect');
const express = require('express');
const cors = require("cors");
const routers = require('./API/routers');
const cookieParser = require('cookie-parser');

//cors config
const corsOptions = {
    origin: ["http://localhost:3000"],
    credentials: true
};

//express server config
const server = express();
server.use(cors(corsOptions))
server.use(express.json());
server.use(cookieParser());

for(const route in routers){
    server.use(`/${route}`,new routers[route]().router)
}
server.get('/*',(req,res)=>{
    res.status(400).json({'message':'page introuvable'});
});

//env
const PORT = process.env.PORT ||5000;

server.listen(PORT,()=>{
    console.log("server start");
})