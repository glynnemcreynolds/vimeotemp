$(document).ready(function() {
  // Check for click events on notification close button
  $('.notification .delete').click(function() {
    // Remove notification
    $('.notification').remove();
  });
});
