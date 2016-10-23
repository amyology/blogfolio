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

  $(window).load(function() {
    $(".loader").fadeOut("slow");
  })

  $(document).on("scroll",function(){
      if($(document).scrollTop()>100){
          $("nav").removeClass("large").addClass("small");
      } else{
          $("nav").removeClass("small").addClass("large");
      }
  });

})(jQuery);
