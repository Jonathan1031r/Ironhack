// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri(pokemonUri);
	}

	render () {
		console.log("Rendering pokemon: #" + this.id);

		$.ajax({
			url: `/api/pokemon/` + this.id,
			error: handleError,
			success: function (response) {
				console.log("Pokemon info:");
				console.log(response);
				
				console.log(response.name);
				console.log(response.pkdx_id);
				console.log(response.height);
				console.log(response.weight);
				console.log(response.types.length);
				var text = response.descriptions.sort().pop().resource_uri
				var evlo
				$(".js-pkmn-name").text(response.name)
				$(".js-pkmn-number").text(response.pkdx_id)
				$(".js-pkmn-height").text(response.height)
				$(".js-pkmn-weight").text(response.weight)
				$(".js-pkmn-hp").text(response.hp)
				$(".js-pkmn-attack").text(response.attack)
				$(".js-pkmn-defense").text(response.defense)
				$(".js-pkmn-sa").text(response.sp_atk)
				$(".js-pkmn-sd").text(response.sp_def)
				$(".js-pkmn-speed").text(response.speed)
				$(".js-pkmn-img").html(`<img src="http://pokeapi.co/media/img/${response.pkdx_id}.png">`)
				$(".js-pkmn-types").empty();
					response.types.forEach(function (element){
						$(".js-pkmn-types").append(element.name + " ");
					});

		$.ajax({
			url: `http://pokeapi.co${text}`,
			error: handleError,
			success: function (response) {
				$(".js-pkmn-description").html(response.description)
			
			}
		})			

				$(".js-pokemon-modal").modal("show")
			}
		});
	};
}

PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}


$(document).on("ready", function (){

	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

function handleError (error) {
  console.log("You dun goofed");
  console.log(error.responseText);
}





