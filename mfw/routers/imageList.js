const pool=require("../pool.js");
const express=require("express");
var router=express.Router();
router.get("/list",(req,res)=>{
    var sql="SELECT id,img_url,title FROM mafengwo_imagelist";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send(result);
		
        
    })
});
module.exports=router;