$(document).ready(function(){
	$(".js-search-btn").on("click", function(event){
		event.preventDefault();	
		theSearch()	

	$(".btn-play").on("click", function(){
		$('.js-player').trigger('play');
		});

		$(".btn-play").on("click", function(){
			$('.js-player').trigger('pause');
			});		
	});
});


function theSearch (){
var newSong = $(".theInput").val()

	$.ajax({
		url: `https://api.spotify.com/v1/search?type=track&query=${newSong}`, 
		success: songInfo,
		error: handleError 

	});
};

function songInfo (response){
	$(".title").text(response.tracks.items[0].name)
	$(".author").text(response.tracks.items[0].artists[0].name)
	$(".cover").html(`<img src="${response.tracks.items[0].album.images[0].url}">`)
	$("audio").prop("src", response.tracks.items[0].preview_url)
	console.log(response)
}






function handleError (error) {
  console.log("Oh no! There was an Boobo!");
  console.log(error.responseText);
}