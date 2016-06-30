"use strict"

var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var x = _range.(1,11)
    var episodes = JSON.parse(file);
    console.log(episodes[x].title);
}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);
