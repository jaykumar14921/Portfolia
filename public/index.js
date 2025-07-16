const express=require("express");
const path=require("path");
const app=express();

app.use('/bootstrap', express.static(path.join(__dirname + 'node_modules/bootstrap/dist/css/bootstrap.css')));
app.use('/bootstrap-icons', express.static(path.join(__dirname + 'node_modules/bootstrap-icons/font/bootstrap-icons.css')));

app.get('/',(req,res)=>{
    res.sendFile(path.join(__dirname+'/index1.html'));
})

app.listen(5000,()=>{
    console.log("Server Started");
})