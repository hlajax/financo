//= require materialize/extras/nouislider

$( document ).on('turbolinks:load', function() {
  Waves.displayEffect();
  // Initialize collapse button
  $(".button-collapse").sideNav();
  // Initialize tabs swipe
  $('ul.tabs').tabs();
  // Initialize select
  $('select').material_select();
  // Initialize modal
  $('.modal').modal();
});
