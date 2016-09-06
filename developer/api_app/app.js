var express = require('express');
var bodyParser = require('body-parser');
var app = express();
app.use(bodyParser.json()); 

var couchbase = require('couchbase');
const COUCH_SERVER = process.env.COUCH_SERVER || '127.0.0.1'
var cluster = new couchbase.Cluster("couchbase://"+COUCH_SERVER);
var bucket = cluster.openBucket('default');

const PORT = process.env.PORT || 3412;
 
var quotes = [
  { author : 'Pradeep Macharla', text : "The best experiences in life are difficult to articulate!"},
  { author : 'Sailaja', text : "You may not realize it when it happens, but a kick in the teeth may be the best thing in the world for you"},
  { author : 'Unknown', text : "Even the greatest was once a beginner. Don't be afraid to take that first step."},
  { author : 'Venkat', text : "You are afraid to die, and you're afraid to live. What a way to exist."}
];
 
app.get('/', function(req, res) {
  res.json(quotes);
});
app.get('/quote/random', function(req, res) {
  var id = Math.floor(Math.random() * quotes.length);
  var q = quotes[id];
  res.json(q);
});
app.get('/quote/:id', function(req, res) {
  if(quotes.length <= req.params.id || req.params.id < 0) {
    res.statusCode = 404;
    return res.send('Error 404: No quote found');
  } 
var q = quotes[req.params.id];
  res.json(q);
});
app.post('/quote', function(req, res) {
  if(!req.body.hasOwnProperty('author') ||
     !req.body.hasOwnProperty('text')) {
    res.statusCode = 400;
    return res.send('Error 400: Post syntax incorrect.');
  }
  
var newQuote = {
    author : req.body.author,
    text : req.body.text
  };
  
quotes.push(newQuote);
  res.json(true);
});
 
app.delete('/quote/:id', function(req, res) {
  if(quotes.length <= req.params.id) {
    res.statusCode = 404;
    return res.send('Error 404: No quote found');
  } 
quotes.splice(req.params.id, 1);
  res.json(true);
});


app.get('/couch/test', function(req, res) {
    myid = JSON.stringify(Math.floor(Math.random() * 1000));
    mydoc = { "date": JSON.stringify(new Date()), "title": "Blah", "name": "pradeep1", "address": "123 xyz street" };
bucket.upsert(myid, mydoc, function(err, result) {
  if (err) throw err;
  bucket.get(myid, function(err, result) {
    if (err) throw err;
    console.log(result.value);
      res.json(result.value);
  });
});
});


app.get('/couch/views', function(req, res) {
    var ViewQuery = couchbase.ViewQuery;
   var query = ViewQuery.from('beer', 'beer');
    bucket.query(query, function(err, results) {
  for(i in results) {
    console.log('Row:', results[i]);
  }
        res.json(results)
});
});


app.listen(PORT);
console.log('Running on http://localhost:' + PORT);