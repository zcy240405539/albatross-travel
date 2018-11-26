document.addEventListener("turbolinks:load", function() {
	$input = $("[data-behavior='autocomplete']")

	var options = {
		getValue: "name", "localName",
		url: function(phrase) {
			return "/search.json?q=" + phrase;
		},
		categories: [
			{ listLocation: "posts", header: "<strong>Articles</strong>" },
			{ listLocation: "itineraries", header: "<strong>Itineraries</strong>" },
			{ listLocation: "attractions", header: "<strong>Attractions</strong>" },
			{ listLocation: "cities", header: "<strong>Cities</strong>" },
			{ listLocation: "regions", header: "<strong>Countries/Regions</strong>" },
		],
		list: {
			onChooseEvent: function(){
				var url = $input.getSelectedItemData().url
				$input.val("")
				Turbolinks.visit(url)
			}
		}
	}

	$input.easyAutocomplete(options)
	//$input.ready(options)
});