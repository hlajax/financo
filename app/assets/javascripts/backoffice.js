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
  // Initialize collapse open and close when has a hash in url
  if(window.location.hash) {
    $("div" + window.location.hash + ".collapsible-header").addClass("active");
    $(".collapsible").collapsible({accordion: false});
  }
});
