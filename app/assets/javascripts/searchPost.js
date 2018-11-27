document.addEventListener("turbolinks:load", function() {
	//$input = $("[data-behavior='autocompletepost']")
	$input = $("#post_name")
	$input1 = $("#post_id")

	var options = {
		getValue: "name",
		url: function(phrase) {
			return "/searchPost.json?q=" + phrase;
		},
		categories: [
			{ listLocation: "posts", header: "<strong>Articles Avalible</strong>" },
		],
		list: {
			onChooseEvent: function(){
				var name = $input.getSelectedItemData().name;
				var id = $input.getSelectedItemData().id				
				console.log(name)
				console.log(id)
				$input.val(name).trigger("change");
				$input1.val(id).trigger("change");
			}
		}
	}

	$input.easyAutocomplete(options)
	//$input.ready(options)
});