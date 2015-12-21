$ ->
  $('.slider').slick
    dots: false
    arrows: false
    slidesToShow: 1
    slidesToScroll: 1
    infinite: true

  $('.prev.btn').click ->
    $('.slider').slick('slickPrev')

  $('.next.btn').click ->
    $('.slider').slick('slickNext')


  controller = new ScrollMagic.Controller

  scene = new ScrollMagic.Scene
    triggerElement: '#trigger2'
  .setTween('#slideshow_block', 0.5, {backgroundColor: "green", scale: 2.5})
  #.setPin('#slideshow_block')
  #.addTo(controller)

  scene = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
  #.setTween('#slideshow_block', 0.5, {backgroundColor: "green", scale: 2.5})
  .setPin('#slideshow_all')
  .setPin('#slideshow')
  #.addTo(controller)

