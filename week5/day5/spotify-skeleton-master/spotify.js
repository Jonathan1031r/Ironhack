$(document).ready(function(){
	$(".js-search-btn").on("click", function(event){
		event.preventDefault();	
		theSearch()	


	$(".btn-play").on("click", function (event){
        event.preventDefault();
        PausePlay();
        $('.js-player').on('timeupdate', printTime);
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

var check = 1;
function PausePlay(){
    if (check == 1) {
	    $('.js-player').trigger('play');
	    $('.btn-play').toggleClass('playing');
	    check = 0;
    }
    else if(check == 0) {
        $('.js-player').trigger('pause');
    	$('.btn-play').toggleClass('playing');
    	check = 1;
    }
}


function printTime () {
  var current = $('.js-player').prop('currentTime');
  //console.debug('Current time: ' + current);
  $("progress").prop('value', current);
  $('.js-player').prop('currentTime');

}

$('.js-player').on('timeupdate', printTime);


function handleError (error) {
  console.log("Oh no! There was an Boobo!");
  console.log(error.responseText);
}