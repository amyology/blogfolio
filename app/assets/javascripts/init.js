(function($){

  $(function(){
    $('.button-collapse').sideNav({
      menuWidth: 210,
      closeOnClick: true
    });

    $('.parallax').parallax();
  });

  $(document).ready(function(){

    $('.scrollspy').scrollSpy();

    Materialize.updateTextFields();

    $('a').smoothScroll();
  });

})(jQuery);
