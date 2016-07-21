$(document).ready( function () {
	

	$('.ingredient').click( function (event) {
		event.preventDefault;
		var btn = event.currentTarget;

		var properIngredientId = $(btn).data("ingredient-id");
		var properSandwichId = $(btn).data("sandwich-id");
		var properIngredientName = $(btn).data("ingredient-name");

		String.prototype.capitalize = function() {
    	return properIngredientName.charAt(0).toUpperCase() + properIngredientName.slice(1);
		}
		
		var params = {
			sandwich_id: properSandwichId,
			ingredient_id: properIngredientId,
		};
		// console.log(params);

		$.ajax({
			type: "POST",
			url: `/api/sandwiches/${properSandwichId}/ingredients/add`,
			data: params,
			success: updateFunk(properIngredientName),
			error: handleError,
		});

	})

	function updateFunk (ingredient) {
			
		var show = `
		<li> ${ingredient} </li>
		`;
		// html = show.capitalize
		$('.ingredient_list').append(show);
	}

	function handleError (err) {
		console.log("Posting error brah:", err);
	}

})