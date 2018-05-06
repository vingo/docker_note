const http=require('http');
http.createServer(function(req,res){
    console.log(process.env.version);
    res.end('hello node server');
}).listen(4006);