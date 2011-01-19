var http = require('http');
var jade = require('jade');
var url = require('url');
var util = require('util');
var fs = require('fs');
var path = require('path');

function index_handler(url, res) {
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 Jade"));
}

function about_handler(url, res) {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end("Moro");
}

function err404_handler(url, res) {
    res.writeHead(404, { 'Content-Type': 'text/html' });
    res.end(jade.render("!!! 5\nhtml(lang='en')\n  body\n    h1 404: " + url.href + " not found.\n"));
}

function jade_page_handler(url, res) {
    var source = 'content' + url.pathname.replace(/\.[^.]+/, '.jade');
    util.debug('Looking for ' + source);
    var stat = fs.statSync(source)
    if (stat.isFile()) {
        util.debug("Found it");
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(jade.renderFile(source, { 'locals': url.query }, function(err, html) {
                                util.log('Jade error: ' + err);
                                }));
    } else {
        util.debug("Calling 404 handler");
        err404_handler(url, res);
    }
}

var routes = {
    "^\\/$": index_handler,
    "^\\/about\\/?$": about_handler,
    "^.*$": jade_page_handler
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
                      util.log("Completed " + req_url.href);
}).listen(8124, "127.0.0.1");

console.log("Server running at 127.0.0.1:8124");

// vim: sw=4 sts=4 et
