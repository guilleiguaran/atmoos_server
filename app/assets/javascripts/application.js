// FIXME: Tell people that this is a manifest file, real code should go into discrete files
// FIXME: Tell people how Sprockets and CoffeeScript works
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function initializeMap() {
  var latlng = new google.maps.LatLng(28.10723210037073, -15.4301593818705);
  var mapOptions = {
    zoom: 7,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
}
