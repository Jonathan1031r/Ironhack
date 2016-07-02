"use strict";

class pitFight{
	constructor(v1, v2, turns){
		this.v1 = v1;
		this.v2 = v2;
		this.side = {
			offence: v1,
			defence: v2
		}
		this.turns = turns;
	}

start(){
	console.log(this.v1.name + 'vs' + this.v2.name + "FIGHT!!")
	this.battle();
}

nearDeath(){
	return(this.v1.health <= 30) || (this.v2.health <= 30);
}	

battle(){
	for(var x = 1; x <= this.turns; x++){
		var offence = this.side.offence;
		var defence = this.side.defence;
		if(!this.nearDeath()){
			offence.attack(defence)
			//switch sides
			this.side.offence = defence;
			this.side.defence = offence;
			//print out
			this.printFormat();}
		else{
			console.log("Game Over");
			return;
		}
	}
}

printFormat(){
	var attacking = this.side.offence;
	var defending = this.side.defence;
	console.log("<----------------------------------->");
	console.log(attacking.name + "has" + attacking.health + "health")
	console.log(defending.name + "has been attacked and has" + defending.health + "health")
	}
}

module.exports = pitFight;













