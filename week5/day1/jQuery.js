$(document).ready(function(){

	$(".js-character-form").on("submit", createCharacters);

	$(".js-fetch-characters").no("click", fetchCharacters);
})

function createCharacters (event){
	event.preventDefault();

	alert("FORM SUBMITTED")
}

function fetchCharacters (){
	alert("FETCH CHARACTERS")
} 












// $.ajax({url: "http://ironhack-characters.herokuapp.com/characters", success: function (response) {console.log(response.all)} });