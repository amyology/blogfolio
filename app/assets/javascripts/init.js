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

  $(document).on('scroll',function(){
      if($(document).scrollTop()>100){
          $('nav').removeClass('large').addClass('small');
      } else{
          $('nav').removeClass('small').addClass('large');
      }
  });

  var options = [
    {selector: '.show-list', offset: 0, callback: function(el) {
      $('.show-list').removeClass('invisible').addClass('appear animated fadeIn');
      // Materialize.showStaggeredList($(el));
    }},
    {selector: '.show-hi', offset: 50, callback: function() {
      $('.show-hi').removeClass('invisible').addClass('appear animated slideInRight');
    }},
    {selector: '.show-name', offset: 300, callback: function() {
      $('.show-name').removeClass('invisible').addClass('appear animated slideInRight');
    }},
    {selector: '.show-bio', offset: 400, callback: function() {
      $('.show-bio').removeClass('invisible').addClass('appear animated slideInRight');
    }}
  ];
  Materialize.scrollFire(options);

})(jQuery);
