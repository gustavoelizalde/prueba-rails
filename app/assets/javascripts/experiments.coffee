# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', (event) ->
	count = $('#time-counter').val()

	setInterval( ->
      if count > 0
      	$('#count-down').text(count--)
      else
      	$('#count-down').text("Moriste")
	, 1000)
	
