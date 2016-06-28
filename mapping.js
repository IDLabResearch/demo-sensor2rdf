/**
 * Created by Pieter Heyvaert, Data Science Lab (Ghent University - iMinds) on 6/28/16.
 */

var tessel2rdf = require('tessel2rdf');

process.stdin.pipe(require('split')()).on('data', processLine);

function processLine (line) {
  if (line) {
    var data = JSON.parse(line);
    tessel2rdf.mapJSON(data, {server: "http://localhost:3000/citybench"});
  }
}