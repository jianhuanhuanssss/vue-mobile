const pool=require("../pool.js");
const express=require("express");
var router=express.Router();
router.get("/usersdetails",(req,res)=>{
    var sql="SELECT title ,content,looked,pho,uname,user_pho FROM mfw_news  INNER JOIN mfo_user ON nid=uid";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports=router;