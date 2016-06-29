var colorsArray = ["black", "purple", "black", "chartreuse", "indigo", "magenta", "scarlet", "indigo", "indigo",];

function countColors (color, theArray){
	var counter;

	var colorOccurances = 0;

	for (counter = 0; counter < theArray.length; counter++){
		var colorFromArray = theArray[counter];

		if (colorFromArray == color) {
			colorOccurances++;
		}
	}
	return colorOccurances;
}

console.log("testing colors function")

console.log(countColors("indigo", colorsArray) === 3);

console.log(countColors("scarlet", colorsArray) === 1);

console.log(countColors("pink", colorsArray) === 0);

console.log("")
console.log("Printing array uppercase")

var upperCaseColors = colorsArray.map(function(colorFromArray){
	return colorFromArray.toUpperCase();
});

console.log(upperCaseColors);








console.log("")
console.log("Finding average number")

var thenumbers = '80:70:90:100';
var numbers = thenumbers.split(':')
// averageColon(numbers);

var sum = 0;
for (var i = 0; numbers.length > i; i++) {
	sum += parseInt(numbers[i]);
};

var avg = sum/numbers.length;
	

// var sum = numbers.reduce (function(a, b) { 
// 	return a + b; });

// var avg = sum / numbers.length;

console.log(avg);