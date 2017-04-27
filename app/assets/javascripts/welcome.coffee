# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


getLocation = ()->
  $.get("http://freegeoip.net/json/", (response) ->
    $("#lat").val(response.latitude)
    $("#long").val(response.longitude)
  )

$(document).on("turbolinks:load", ->
  getLocation()
)


