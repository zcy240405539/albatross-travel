# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#post_city_id ').parent().hide()
	$('#post_attraction_id ').parent().hide()
	cities = $('#post_city_id').html()
	attractions = $('#post_attraction_id').html()
	$('#post_region_id').change ->
		region = $('#post_region_id :selected').text()
		options = $(cities).filter("optgroup[label='#{region}']").html()
		if options
			$('#post_city_id ').html(options)
			$('#post_city_id ').parent().show()
			
			$('#post_city_id').change ->
			city = $('#post_city_id :selected').text()
			options = $(attractions).filter("optgroup[label='#{city}']").html()
			if options
				$('#post_attraction_id ').html(options)
				$('#post_attraction_id ').parent().show()
			else
				$('#post_attraction_id ').empty()
				$('#post_attraction_id ').parent().hide()
		else
			$('#post_city_id ').empty()
			$('#post_city_id ').parent().hide()
			$('#post_attraction_id ').empty()
			$('#post_attraction_id ').parent().hide()



