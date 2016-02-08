



$(function(){
  $("#home").load("../html/version-choice.html"); 
});

//BEGIN - Datepicker JQuery

$('#date-picker').datepicker({
	format: "dd/mm/yyyy",
	weekStart: 1,
	onSelect: function(){
		$('#date').submit();
	}
});

$('.ui-icon-circle-triangle-w').text('⇦');
$('.ui-icon-circle-triangle-e').text('⇨');

//END - Datepicker


//BEGIN - Slider

var galleryTop = new Swiper('.gallery-top', {
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    spaceBetween: 10,
    pagination: '.swiper-pagination',
    paginationClickable: true,
    keyboardControl: true,
    effect: 'fade'
});
var galleryThumbs = new Swiper('.gallery-thumbs', {
    spaceBetween: 10,
    centeredSlides: true,
    slidesPerView: 'auto',
    touchRatio: 0.2,
    slideToClickedSlide: true
});
galleryTop.params.control = galleryThumbs;
galleryThumbs.params.control = galleryTop;

$('.full').click(function(){
	$(this).find('.info').toggle(200);
});


//END - Slider


//BEGIN - Map

// function initMap() {
//   var map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: 41.3833, lng: 2.1833},
//     zoom: 12
//   });
//   var infoWindow = new google.maps.InfoWindow({map: map});

//   // Try HTML5 geolocation.
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       var pos = {
//         lat: position.coords.latitude,
//         lng: position.coords.longitude
//       };

//       infoWindow.setPosition(pos);
//       infoWindow.setContent('Location found.');
//       map.setCenter(pos);
//     }, function() {
//       handleLocationError(true, infoWindow, map.getCenter());
//     });
//   } else {
//     // Browser doesn't support Geolocation
//     handleLocationError(false, infoWindow, map.getCenter());
//   }
// }

// function handleLocationError(browserHasGeolocation, infoWindow, pos) {
//   infoWindow.setPosition(pos);
//   infoWindow.setContent(browserHasGeolocation ?
//                         'Error: The Geolocation service failed.' :
//                         'Error: Your browser doesn\'t support geolocation.');
// }

//END - Map


//BEGIN - Times

$('#ad-spin, #ch-spin, #st-spin').spinner({
	min: 0
});


if($('body').width()<766){
	$('.pin').click(function(){
		$(this).closest('div').find('.movie-times-wrapper').toggle(200);
		$( ".movie-times" ).accordion({collapsible : true, active : false});
	});
}

if($('body').width()>=766){
	$('#desktop-cinema-wrapper').show();
}

//END - Times

$('.time button').click(function() {
    $('.time button').addClass('active').not(this).removeClass('active');

    // TODO: insert whatever you want to do with $(this) here
});

//BEGIN-ACTIVE TIME







