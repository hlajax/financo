//= require materialize/extras/nouislider

// $( document ).ready(function(){
//
//   $(".button-collapse").sideNav();
// })

$( document ).on('turbolinks:load', function() {
  Waves.displayEffect();
  // Initialize collapse button
  $(".button-collapse").sideNav();
});
