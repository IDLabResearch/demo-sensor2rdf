/**
 * Created by Pieter Heyvaert, Data Science Lab (Ghent University - iMinds) on 6/28/16.
 */

var tessel2json = require('tessel2json');
var config = require('./config.json');
var modules = config.modules;

var callback = function(data) {
  console.log(JSON.stringify(data));
};

for (var i = 0; i < modules.length; i ++) {
  var module = modules[i];
  switch (module.type) {
    case 'climate':
      tessel2json.climate.si7020(module.port, module.interval, 'c', callback);
      break;
    default:
      tessel2json.rfid.pn532(module.port, module.interval, callback);
      break;
  }
}