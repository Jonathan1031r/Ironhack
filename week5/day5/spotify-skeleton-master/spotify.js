$(document).ready(function(){
	$(".js-btn").on("click", function(event){
		event.preventDefault();	
		theSearch()	
	});
});

var newSong = $(".theInput").val()

function theSearch (){

	$.ajax({
		url: `https://api.spotify.com/v1/search?type=track&query=hello`, 
		success: songInfo,
		error: handleError 

	});
};

function songInfo (response){
	$(".title").text(response.tracks.items[0].name)
	$(".author").text(response.tracks.items[0].artists[0].name)
	$(".cover").html(`<img src="${response.tracks.items[0].album.images[0].url}">`)
}





function handleError (error) {
  console.log("Oh no! There was an Boobo!");
  console.log(error.responseText);
}