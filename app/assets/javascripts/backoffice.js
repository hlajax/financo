//= require materialize/extras/nouislider

// $( document ).ready(function(){
//   // Initialize collapse button
//   $(".button-collapse").sideNav();
// })

$( document ).on('turbolinks:load', function() {
  Waves.displayEffect();
 $(".button-collapse").sideNav();
});
