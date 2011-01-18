var http = require('http');
var jade = require('jade');
var url = require('url');
var util = require('util');

function index_handler(url, res) {
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 Jade"));
}

function about_handler(url, res) {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end("Moro");
}

function random_handler(url, res) {
    res.writeHead(404, { 'Content-Type': 'text/html' });
    res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 404: " + url.href + " not found.\n"));
}

var routes = {
    "^\\/$": index_handler,
    "^\\/about\\/?$": about_handler,
    "^.*$": random_handler
};

http.createServer(function (req, res) {
                      req_url = url.parse(req.url, true);
                      util.log("Handling " + req_url.href);
                      for (var route in routes) {
                        util.debug("Trying " + route);
                        if (RegExp(route).test(req_url.pathname)) {
                          util.debug("Routing");
                          routes[route](req_url, res);
                          break;
                        }
                      }
}).listen(8124, "127.0.0.1");

console.log("Server running at 127.0.0.1:8124");

// vim: sw=4 sts=4 et
