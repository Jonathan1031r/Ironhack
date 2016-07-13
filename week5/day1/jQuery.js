$(document).ready(function(){

	$(".js-character-form").on("submit", createCharacters);

	$(".js-fetch-characters").no("click", fetchCharacters);
});

function createCharacters (event){
	event.preventDefault();

	var name = $('[name="name"]').val();
	var occupation = $('[name="occupation"]').val();
	var weapon = $('[name="weapon"]').val();

$(".js-character-list").prepend(listContent)
}

function fetchCharacters (){
	$.ajax({
		url: "http://ironhack-characters.herokuapp.com/characters", 
		success: showCharacters,
		error: handleError 
	});
}	

function showCharacters(response){	
	console.log(response);

	var charactersArray = response;

	

	charactersArray.forArray(function (thecharacter){

	var listContent = 
	<li>
		<h3> ${thecharacter.name} </h3>
		
		<ul>
			<li> Occupation: ${thecharacter.occupation} </li>
			<li> Weapon: ${thecharacter.weapon} </li>
		</ul>
	</li>

})}












$.ajax({url: "http://ironhack-characters.herokuapp.com/characters", success: function (response) {console.log(response.all)} });