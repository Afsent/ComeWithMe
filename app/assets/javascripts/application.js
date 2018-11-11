// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//Show reply form
$(document).on('turbolinks:load', function() {
  $('.comment-reply').click( function() {
     $(this).closest('.comment').find('.reply-form').toggle(400);
  });
});
//Fade out flash messages
$(document).on('turbolinks:load', function() {
	$(".flash-message").fadeOut( 4000, function() {
		$(this).remove(); 
	});
});
