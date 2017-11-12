var express = require ('express');
var mysql = require ('mysql');
var http = require('http');
var app = express();
var fs = require('fs');

function onRequest (req, res){
    res.writeHead(200, {'Content-Type': 'text/html'});
    fs.readFile('./index.html', null, function(error, data){
      if (error) {
        res.writeHead('Error');
        res.write('not found');
      }
      else{
        res.write(data);
      }
      res.end();
    }
}
http.createServer(onRequest).listen(8000);

var connection = mysql.createConnection({
    host :'localhost',
    local:'root',
    password :'',
    database :'doctimer'
});

connect.connect( function(error) {
    if(!!error) {
        console.log('Error');
    }
    else {
        console.log('Connected');
    }
});

app.get('/', function (req, res) {
  var query = SELECT * from Patient;
  connection.query(query, function (error, rows) {
    if (!!error){
      console.log('Error in der Abfrage');
    }else {
      console.log('erfolgreiche Abfrage');
      console.log(rows);
    }
  });


app.listen(1337);
