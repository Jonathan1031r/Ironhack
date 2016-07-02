"use strict"

var Viking = require("./lib/viking.js");
var pitFight = require("./lib/pitFight.js");


var v1 = new Viking("Jumbo", 200, 40);
var v2 = new Viking("Gabriel", 197, 35);

var round1 = new pitFight(v1, v2, 10);
round1.start();














