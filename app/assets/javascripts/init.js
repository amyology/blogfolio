(function($){
  $(function(){

    $('.button-collapse').sideNav({
      menuWidth: 210,
      closeOnClick: true
    });

    $('.parallax').parallax();

  });

  $(document).ready(function(){
    $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });
    $('.scrollspy').scrollSpy();
    Materialize.updateTextFields();
  });

})(jQuery);