/*
  *
  * TODO: add your code here!
  *
*/

// Faire apparaitre le pop-up
$(function() {
  $('#message').slideDown('slow');
  $('#message').delay(1000);
  $('#message').on('click', function(e) {
    $(message).slideUp('slow');
  });
  $('#message-wrapper').on("mouseenter", function(e){
    $("#message").slideDown(500);
  });
});
