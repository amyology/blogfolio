$(function(){
  $('.button-collapse').sideNav({
    menuWidth: 200,
    closeOnClick: true
  });

  $('.parallax').parallax();
});

$(document).ready(function(){

  $('.scrollspy').scrollSpy();

  Materialize.updateTextFields();

  $('a').smoothScroll();

  $('.materialboxed').materialbox();

  $('#info-toggle').click(function(){
    $('#blog-tips').toggle();
  });
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
        $('.arrowdown').removeClass('invisible');
    }
});

if ($(window).width() > 992) { 
  var options = [
    {selector: '.show-name', offset: 0, callback: function() {
      $('.show-name').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-pic', offset: 100, callback: function() {
      $('.show-pic').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-bio', offset: 100, callback: function() {
      $('.show-bio').removeClass('invisible').addClass('animated slideInRight');
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
    {selector: '.project2', offset: 100, callback: function() {
      $('.project2').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project3', offset: 200, callback: function() {
      $('.project3').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project4', offset: 300, callback: function() {
      $('.project4').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.project5', offset: 400, callback: function() {
      $('.project5').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-form-header', offset: 0, callback: function() {
      $('.show-form-header').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-form', offset: 150, callback: function() {
      $('.show-form').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-link-header', offset: 0, callback: function() {
      $('.show-link-header').removeClass('invisible').addClass('animated slideInRight');
    }},
    {selector: '.show-link', offset: 150, callback: function() {
      $('.show-link').removeClass('invisible').addClass('animated slideInRight');
    }}
  ];
}

if ($(window).width() < 992) { 
  var options = [
    {selector: '.show-name', offset: 0, callback: function() {
      $('.show-name').removeClass('invisible').addClass('animated slideInDown');
    }},
    {selector: '.show-pic', offset: 100, callback: function() {
      $('.show-pic').removeClass('invisible').addClass('animated slideInLeft');
    }},
    {selector: '.show-bio', offset: 100, callback: function() {
      $('.show-bio').removeClass('invisible').addClass('animated slideInLeft');
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
      $('.show-link-header').removeClass('invisible').addClass('animated slideInUp');
    }},
    {selector: '.show-link', offset: 150, callback: function() {
      $('.show-link').removeClass('invisible').addClass('animated slideInUp');
    }}
  ];
}

Materialize.scrollFire(options);

function disappear(){
  $('.arrowdown').addClass('invisible');
}
