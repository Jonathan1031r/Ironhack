"use strick"

var fs = require('fs');


function fileActions(err, file){ 
    if (err) {
        throw err;
    }

    var episodes = JSON.parse(file);

    var filteredArry = episodes.filter(function(epi){
    return epi.rating >= 8.5;
});

    var sortedEpisodes = episodes.sort(function(a, b){
    return a.episode_number-b.episode_number
    });


    filteredArry.forEach(function(episode){
        sum="";
        for(var x=1;x<episode.rating;x++){
            sum+="*";
        }

        console.log(
            "Title: "+
            episode.title + 
            " Episode Number: " +
            episode.episode_number +
            "\n" +
            episode.description + 
            "\n" + "Rating:" + 
            episode.rating +  
            sum
        );
    });
}


fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

