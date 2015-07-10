$(function logout() {

      $('#menu_opener').click(function() {
    	  console.log("you clicked me...")
  $('#submenu').slideToggle('fast');
  return false;

});
  });

$(document).click(function() {
$('#submenu').slideUp('');
});

$("#submenu").click(function(e) {
e.stopPropagation(); });
