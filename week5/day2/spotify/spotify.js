$(document).ready(function(){
	$(".theForm").on("submit", function(event){
		event.preventDefault();	
		theSearch()	
	$('.body-album').on('show.bs.modal', function (e) {
		if (!data) return e.preventDefault() // stops modal from being shown
		})
	});
});

var newArtist = $(".theInput").val()

function theSearch (){
	
	$.ajax({
		url: `https://api.spotify.com/v1/search?type=artist&query=${newArtist}`, 
		success: showArtist,
		error: handleError 

	});
}

function showArtist (response){

//  ---when button clicked directs to grab albums---------
	// $.ajax({ 
	// 	url: `https://api.spotify.com/v1/albums/${albumsIds}`,
	// 	success: showAlbum,
	// 	error: handleError 
	// });

//	$("theInput").empty();

//----testing whats inside--->	console.log(response)

 	response.artists.items.forEach(function (artist){
//----testing retutrn-->	console.log(artist.name);
//----testing return-->		console.log(artist.id);
		var name = artist.name;
		var id = artist.id;

//---Not all objects had pictures ---- or more than just one ---------------------------vvvvvvv
		if (artist.images.length > 0){
			$("#list").append(`<h1> ${name} </h1>`);
			$("#list").append(`<img width="300" heigth="300" data-id="${}" src=${artist.images[0].url}>`);
		}
 	})

	function showAlbum(response){
		console.log(response)


		("img").onclick
			$(".modal").append("albums")
			$('.modal').modal("show") 
		
	}	
};



function handleError (error) {
  console.log("Oh no! There was an error.");
  console.log(error.responseText);
}





// someimage.onclick $('.modal').modal("show")
//
// 


