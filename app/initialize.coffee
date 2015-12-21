$ ->
  $('.slider').slick
    dots: false
    arrows: false
    slidesToShow: 1
    slidesToScroll: 1
    infinite: true

  $('.prev .btn').click ->
    $('.slider').slick('slickPrev')

  $('.next .btn').click ->
    $('.slider').slick('slickNext')
