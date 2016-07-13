$(document).ready(function(){
	$(".theForm").on("submit", function(event){
	event.preventDefault();	
	theSearch()	
	});
});

function theSearch (){
	

	var newArtist = $(".theInput").val()

	$.ajax({
		url: `https://api.spotify.com/v1/search?type=artist&query=${newArtist}`, 
		success: showArtist,
		error: handleError 

	});
}

function showArtist (response){

	console.log(response)

 	response.artists.items.forEach(function (artist){
		console.log(artist.name)

// 		var picture = <img src="errythang.">

	("h3").text(artist.name)
 	}
 )};



function handleError (error) {
  console.log("Oh no! There was an error.");
  console.log(error.responseText);
}
