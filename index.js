// hello world express app

var express = require('express');
var app = express();      // create express app instance

app.get('/', function(req, res) {
    res.send('Hello World!');
});

app.listen(3000, function() {
    console.log('Example app listening on port 3000!');
});
