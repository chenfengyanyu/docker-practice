var http = require("http"); 
//引入文件模块
var fs = require("fs"); 
var server = http 
 .createServer(function (req, res) { 
 //设置头信息
 res.setHeader("Content-Type", "text/html;charset='utf-8'"); 
 //读文件
 fs.readFile("./test-report.html", "utf-8", function (err, data) { 
 if (err) { 
 console.log(err); 
 } else { 
 //返回 test-report.html 页面
 res.end(data); 
 } 
 }); 
 //监听端口
 }) 
 .listen(8888);