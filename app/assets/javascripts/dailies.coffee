# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#daily_dailydate').datepicker()
	$('#daily_city_id').parent().hide()
	$('#daily_attraction_id').parent().hide()
	cities = $('#daily_city_id').html()
	attractions = $('#daily_attraction_id').html()
	$('#daily_region_id').change ->
		region = $('#daily_region_id :selected').text()
		options = $(cities).filter("optgroup[label='#{region}']").html()
		if options
			$('#daily_city_id ').html(options)
			$('#daily_city_id ').parent().show()
			
			$('#daily_city_id').change ->
			city = $('#daily_city_id :selected').text()
			options = $(attractions).filter("optgroup[label='#{city}']").html()
			if options
				$('#daily_attraction_id ').html(options)
				$('#daily_attraction_id ').parent().show()
			else
				$('#daily_attraction_id ').empty()
				$('#daily_attraction_id ').parent().hide()
		else
			$('#daily_city_id ').empty()
			$('#daily_city_id ').parent().hide()
			$('#daily_attraction_id ').empty()
			$('#daily_attraction_id ').parent().hide()
