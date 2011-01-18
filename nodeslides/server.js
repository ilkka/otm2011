var http = require('http');
var jade = require('jade');
http.createServer(function (req, res) {
                      res.writeHead(200, { 'Content-Type': 'text/html' });
                      res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 Jade"));
}).listen(8124, "127.0.0.1");
console.log("Server running at 127.0.0.1:8124");

// vim: sw=4 sts=4 et
