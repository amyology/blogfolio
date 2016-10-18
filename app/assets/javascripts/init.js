(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();

  });

  $(document).ready(function(){
    $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });
    $('.scrollspy').scrollSpy();
  });

})(jQuery);