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
    {selector: '.show-hi', offset: 0, callback: function() {
      $('.show-hi').removeClass('invisible').addClass('animated slideInRight');
    }},
    {selector: '.show-name', offset: 300, callback: function() {
      $('.show-name').removeClass('invisible').addClass('animated slideInRight');
    }},
    {selector: '.show-bio', offset: 350, callback: function() {
      $('.show-bio').removeClass('invisible').addClass('animated slideInRight');
    }},
    {selector: '.show-skills', offset: 0, callback: function() {
      $('.show-skills').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-list', offset: 205, callback: function(el) {
      $('.show-list').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-contact', offset: 250, callback: function() {
      $('.show-contact').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.project1', offset: 0, callback: function() {
      $('.project1').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project2', offset: 150, callback: function() {
      $('.project2').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project3', offset: 300, callback: function() {
      $('.project3').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-form-header', offset: 0, callback: function() {
      $('.show-form-header').removeClass('invisible').addClass('animated fadeIn');
    }},
    {selector: '.show-form', offset: 100, callback: function() {
      $('.show-form').removeClass('invisible').addClass('animated fadeIn');
    }},
    {selector: '.show-link-header', offset: 350, callback: function() {
      $('.show-link-header').removeClass('invisible').addClass('animated fadeIn');
    }},
    {selector: '.show-link', offset: 450, callback: function() {
      $('.show-link').removeClass('invisible').addClass('animated fadeIn');
    }}
  ];
  Materialize.scrollFire(options);

})(jQuery);
