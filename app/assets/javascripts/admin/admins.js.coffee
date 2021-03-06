# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  
  # Side Bar Toggle
  $(".hide-sidebar").click ->
    $("#sidebar").hide "fast", ->
      $("#content").removeClass "span9"
      $("#content").addClass "span12"
      $(".hide-sidebar").hide()
      $(".show-sidebar").show()


  $(".show-sidebar").click ->
    $("#content").removeClass "span12"
    $("#content").addClass "span9"
    $(".show-sidebar").hide()
    $(".hide-sidebar").show()
    $("#sidebar").show "fast"
