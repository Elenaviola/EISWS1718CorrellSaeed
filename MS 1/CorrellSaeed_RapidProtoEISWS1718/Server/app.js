var express = require ('express');
var mysql = require ('mysql');
var app = express();

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

app.get('/', function (rey, resp) {
  connection.query("SELECT * FROM patient", function (error, rows, fields) {} )
    if (!!error){
      console.log('Error in der Abfrage');
    }else {
      console.log('erfolgreiche Abfrage');
      console.log(rows);
    }
  });


app.listen(1337);
