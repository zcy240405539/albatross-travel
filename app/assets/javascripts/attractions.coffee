# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#attraction_city_id ').parent().hide()
	cities = $('#attraction_city_id').html()
	$('#attraction_region_id').change ->
		region = $('#attraction_region_id :selected').text()
		options = $(cities).filter("optgroup[label='#{region}']").html()
		if options
			$('#attraction_city_id ').html(options)
			$('#attraction_city_id ').parent().show()
		else
			$('#attraction_city_id ').empty()
			$('#attraction_city_id ').parent().hide()