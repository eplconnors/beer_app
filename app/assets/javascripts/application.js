// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require moment
//= require fullcalendar
$(document).ready(function (){
  var map;
function initialize() {
  var business = new google.maps.LatLng(latitude, longitude);
    map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: business,
    zoom: 15,
    scrollwheel: false,
  });
  var marker = new google.maps.Marker({
    position: business,
    map: map,
    title: title,
    draggable: true
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
});

$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
      header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay',
		},
    DefaultDate: '2016-05-12',
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: 'All Day Event',
				start: '2016-05-01'
			},
      {
				title: 'Lunch',
				start: '2016-05-12T12:00:00'
			},
    ]
	})
})
