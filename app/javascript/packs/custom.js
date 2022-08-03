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
