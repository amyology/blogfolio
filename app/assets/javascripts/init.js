(function($){

  $(function(){
    $('.button-collapse').sideNav({
      menuWidth: 500,
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
      if ($(document).scrollTop() > 100) {
          $('nav').removeClass('large').addClass('small');
          $('.arrowdown').addClass('invisible');
          $('.arrowup').removeClass('invisible');
      } else {
          $('nav').removeClass('small').addClass('large');
          $('.arrowup').addClass('invisible');
      }
  });

  var options = [
    {selector: '.show-name', offset: 0, callback: function() {
      $('.show-name').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-pic', offset: 100, callback: function() {
      $('.show-pic').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-bio', offset: 100, callback: function() {
      $('.show-bio').removeClass('invisible').addClass('animated slideInUp');
    }},
    {selector: '.show-skills', offset: 0, callback: function() {
      $('.show-skills').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-list', offset: 205, callback: function(el) {
      $('.show-list').removeClass('invisible').addClass('animated fadeIn');
    }},
    {selector: '.show-contact', offset: 240, callback: function() {
      $('.show-contact').removeClass('invisible').addClass('animated slideInUp');
    }},
    {selector: '.project1', offset: 0, callback: function() {
      $('.project1').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project2', offset: 200, callback: function() {
      $('.project2').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project3', offset: 400, callback: function() {
      $('.project3').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-form-header', offset: 0, callback: function() {
      $('.show-form-header').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-form', offset: 150, callback: function() {
      $('.show-form').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-link-header', offset: 0, callback: function() {
      $('.show-link-header').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-link', offset: 150, callback: function() {
      $('.show-link').removeClass('invisible').addClass('animated slideInUp');
    }}
  ];
  Materialize.scrollFire(options);

})(jQuery);

function disappear(){
  $('.arrowdown').addClass('invisible');
}