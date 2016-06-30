"use strict";


var Car = require("./lib/car.js");

var Ford = new Car("F-150", "BeepBeep");

console.log(Ford.model)
Ford.makeNoise();
Ford.numberOfWheels();