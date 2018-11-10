const pool=require("../pool.js");
const express=require("express");
var router=express.Router();
router.get("/countrydetail",(req,res)=>{
    var did = req.query.did;
    var sql="SELECT address,add_pho FROM mfw_coutry_details WHERE did = ?";
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err;
		res.send(result); 
    })
});
router.get("/address",(req,res)=>{
    var sql="SELECT contry ,cid FROM mfw_coutry  ";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send(result); 
    })
});
module.exports=router;