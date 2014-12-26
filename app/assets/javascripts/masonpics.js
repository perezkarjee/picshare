var container = document.querySelector('#picsmasonry');
var msnry;
// initialize Masonry after all images have loaded
imagesLoaded( container, function() {
  msnry = new Masonry( container );
});

$(document).ready(function() {
  $('#picsmasonry').masonry({
   columnWidth: 320,
   itemSelector: '.picbox'
  }).imagesLoaded(function() {
   $('#picsmasonry').masonry('reload');
  });
});