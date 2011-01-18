var http = require('http');
var jade = require('jade');
var url = require('url');
var util = require('util');

function handle(url, res) {
    util.log("Handling request for " + url.href);
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 Jade"));
}

http.createServer(function (req, res) {
                      req_url = url.parse(req.url);
                      handle(req_url, res);
}).listen(8124, "127.0.0.1");

console.log("Server running at 127.0.0.1:8124");

// vim: sw=4 sts=4 et
