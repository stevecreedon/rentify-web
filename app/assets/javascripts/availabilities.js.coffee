# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $calendar = $('#calendar')
  $calendar.fullCalendar
    theme: true
    editable: false
    loading: (bool) ->
      if bool
        $('#loading').show()
      else
        $('#loading').hide()
    eventClick: (event) ->
      false
    events: $calendar.data('path')
  return
