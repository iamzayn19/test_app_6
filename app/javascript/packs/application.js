// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

window.jquery = $
window.$ = $

$(document).ready(function() {
  $('[data-js-hide-link]').click(function(event){
    $(this).parents('li').fadeOut(2000);
    event.preventDefault(); 
  });

  $('[data-js-search]').change(function(event) {
    search_term = $(this).val();
    alert('You are searching for ' + search_term);
  });
  
});


$(document).ready(function() {
  $(".dropdown-toggle").dropdown();
});


