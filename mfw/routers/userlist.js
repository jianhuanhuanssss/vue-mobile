const pool=require("../pool.js");
const express=require("express");
var router=express.Router();
router.get("/user",(req,res)=>{
    var sql="SELECT uid,uname,upwd,user_pho FROM mfo_user";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send(result);
		
        
    })
});
module.exports=router;