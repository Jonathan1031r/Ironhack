"use strict"

var Viking = require("./lib/viking.js");
var pitFight = require("./lib/pitFight.js");
var Saxon = require("./lib/saxon.js");


var v1 = new Viking("Jumbo J", 200, 40);
var v2 = new Viking("Gabriel", 200, 40);

var round1 = new pitFight(v1, v2, 9);
round1.start();














