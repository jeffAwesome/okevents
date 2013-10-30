# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
$(document).ready ->
  windowHeight = $(window).height()
  contentHeight = $('.events-show .contentContainer').height()

  if contentHeight < windowHeight
    $('.events-show .body-container').css('height', windowHeight+'px')

