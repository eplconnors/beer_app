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
//= require turbolinks
//= require_tree .
var map;
function initMap() {
  var b_profile = new google.maps.LatLng(latitude, longitude);
  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: b_profile,
    zoom: 15,
    scrollwheel: false,
  });
  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title: title,
    draggable: true
  });
}
AIzaSyAICEi9lhFUG7qchnjGmn78ekxTWSJDH1Y
