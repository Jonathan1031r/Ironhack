"use strict";

class Saxon {
  constructor (health, strength) {
    this.name = "Saxon";
    this.health = health;
    this.strength = strength;
  }

 attack(opponent){
    	opponent.health = opponent.health - this.strength;
	}
}

module.exports = Saxon;