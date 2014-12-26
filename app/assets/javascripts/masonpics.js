$(window).load(function() {
  $('#picsmasonry').masonry({ columnWidth: 320 });
});

$(document).ready(function() {
  $('#picsmasonry').masonry({
   columnWidth: 320,
   itemSelector: '.picbox'
  }).imagesLoaded(function() {
   $('#picsmasonry').masonry('reload');
  });
});