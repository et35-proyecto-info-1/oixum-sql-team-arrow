var express = require('express');

var connection = require('./connection');

var path = require('path');

var app = express();

app.use(express.static('public'));
app.use(express.urlencoded({ extended: false }));
app.use(express.urlencoded({ extended: false }));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.get('/', function(req, res) {
  res.render('index');
});

function boton(){
var tConsulta=text(document.getElementById("consulta").value)
}

app.post('/', function(req, res) {
  const query = req.body.query;
  connection.query(query, function (error, results, fields) {
    console.log(results);
    console.log(fields);
    res.render('index', {
      results: results,
      fields: fields,
      error: error
    });
  });
});



app.listen(3000, function() {
  connection.connect();
  console.log('Entrá a http://localhost:3000 desde tu navegador para ver qué devuelve esto');
});

process.on('SIGINT', function() {
  console.log('Cerrando la conexión con la base de datos')
  connection.end();
  process.exit(1);
});
