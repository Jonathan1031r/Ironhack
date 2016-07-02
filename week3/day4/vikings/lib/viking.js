"use strict";

class Viking{
	constructor(name, health, strength){
		this.name = name;	
    	this.health = health;
    	this.strength = strength;

    }
    attack(opponent){
    	opponent.health = opponent.health - this.strength;
    		console.log(this.name + "attacked" + opponent.name + "inflicting" + this.strength + "of damage.")
	}
} 





module.exports = Viking;