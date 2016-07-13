$(document).ready(function(){
	$(".theForm").on("submit", function(event){
	event.preventDefault();	
	theSearch()	
	// $("img").on("click", showAlbum)
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
	$("theForm").empty();

	console.log(response)

 	response.artists.items.forEach(function (artist){
		console.log(artist.name);
		console.log(artist.images.url);

		var name = artist.name;

		// var images = artist.images[0].url;
		
		if (artist.images.length > 0){
			$("#list").append(`<h1> ${name} </h1>`);
			$("#list").append(`<img width="300" heigth="300" src=${artist.images[0].url}>`);
		}



 	}
 )};



function handleError (error) {
  console.log("Oh no! There was an error.");
  console.log(error.responseText);
}
