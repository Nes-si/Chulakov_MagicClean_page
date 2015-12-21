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
    triggerElement: '#car-screen'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight
    tweenChanges: true
  .setPin('#car-screen')
  .addTo(controller)

  caption1 = new TimelineMax()
  .add(TweenMax.to($('.section.main_car_animation .caption'), 1, {'left': '50%'}))

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '200%'
  .triggerHook(1)
  # .setClassToggle(".about_us_video, .about_us .overlay", "showed")
  .setTween(caption1)
  .addTo(controller)

  scene = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight / 2
  #.setTween('#slideshow_block', 0.5, {backgroundColor: "green", scale: 2.5})
  .setPin('#show-text')
  .addTo(controller)

