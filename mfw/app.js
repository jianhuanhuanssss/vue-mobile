var express = require("express");
const cors = require("cors");
const bodyParse = require("body-parser");
var app = express();
const routerImageList = require("./routers/imageList");
const userList=require("./routers/userlist");
const usersdetails=require("./routers/newslist");
const countryList=require("./routers/countryList");
app.listen(3000);
app.use(express.static("./public"));
app.use(bodyParse.urlencoded({ extended: false }));
app.use(cors({
	origin: ["http://127.0.0.1:3001", "http://localhost:3001"],
	credentials: true
}));
app.use("/imagelist", routerImageList);
app.use("/userList",userList);
app.use("/news",usersdetails);
app.use("/country",countryList);
