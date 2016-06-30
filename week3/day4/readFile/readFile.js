var fs = require("fs")

fs.readFile("movies.txt", "utf8", function(theError, fileContent){
	console.log("/nFile has been read! Printing it's contents:");
	console.log(fileContent);
})