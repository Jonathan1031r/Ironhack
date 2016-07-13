$(document).ready(function (){
	console.log("document ready");

	if ("geolocation" in navigator){
		console.log("Browser has geolocation!");

		//var options = { timeout: 1000 };

		navigator.geolocation.getCurrentPosition( showPosition, handleError);
	}
	else{
		console.log("Browser doesn't have geolocation.");

		var html = `<h2>Update your browser</h2>`;

		$("body").append(html);
	}
});

function showPosition(position){
	console.log("User consented to give location")
	console.log(position);

	var lat = position.coords.latitude;
	var lng = position.coords.longitude;

	var html = 
		`<h2> Your Position</h2>
		<ul>
			<li>Latitude: ${lat} </li>
			<li>Longitude: ${lng}</li>
		</ul>`;

		$("body").append(html);

	var location = `<img src="https://maps.googleapis.com/maps/api/staticmap?center= ${lat},${lng} &size=640x400&zoom=17" id="map">`
		$("body").html(location)
}

function handleError(error){
	console.log("Error getting position")
	console.log(error);

	if (error.code === 1){
		var html = `<h2>Come on give your location</h2>`
		$("body").append(html);
	}
}
