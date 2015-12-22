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
    duration: '401%'
    tweenChanges: true
  .setPin('#car-screen')
  .addTo(controller)


  caption1_width = document.getElementById('car_caption1').offsetWidth
  caption1_width = caption1_width / document.documentElement.clientWidth * 100 + 100
  caption1_w = caption1_width + '%'

  caption2_width = document.getElementById('car_caption2').offsetWidth
  caption2_width = caption2_width / document.documentElement.clientWidth * 100 + 100
  caption2_w = caption2_width + '%'

  caption3_width = document.getElementById('car_caption3').offsetWidth
  caption3_width = caption3_width / document.documentElement.clientWidth * 100 + 100
  caption3_w = caption3_width + '%'

  caption4_width = document.getElementById('car_caption4').offsetWidth
  caption4_width = caption4_width / document.documentElement.clientWidth * 100 + 100
  caption4_w = caption4_width + '%'


  caption = new TimelineMax()
  .to($('.section.main_car_animation .caption1'), 1, {'left': caption1_w, ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption2'), 1, {'left': caption2_w, ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption3'), 1, {'left': caption3_w, ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption4'), 1, {'left': caption4_w, ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption1'), 0, {'left': '0%', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption2'), 0, {'left': '0%', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption3'), 0, {'left': '0%', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption4'), 0, {'left': '0%', ease: Power0.easeNone})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '400%'
    triggerHook: 0
  .setTween(caption)
  #.addIndicators()
  .addTo(controller)


  back_color = new TimelineMax()
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97e5ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97d9ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97c1ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#82bcf8", ease: Power0.easeNone})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '400%'
    triggerHook: 0
  .setTween(back_color)
  .addTo(controller)



  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    triggerHook: 0
  .on "start end", ->
    $('.program1').css("display", "block")
    $('.program2').css("display", "none")

    $('.block-top-1').css("display", "block")
    $('.block-top-2').css("display", "none")

    $('.block-bottom-1').css("display", "block")
    $('.block-bottom-2').css("display", "none")
  .addTo(controller)
  #.addIndicators()

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: document.documentElement.clientHeight
    triggerHook: 0
  .on "start end", ->
    $('.program1').css("display", "none")
    $('.program2').css("display", "block")
    $('.program3').css("display", "none")

    $('.block-top-1').css("display", "none")
    $('.block-top-2').css("display", "block")
    $('.block-top-3').css("display", "none")

    $('.block-bottom-1').css("display", "none")
    $('.block-bottom-2').css("display", "block")
    $('.block-bottom-3').css("display", "none")
  .addTo(controller)
  #.addIndicators()

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: document.documentElement.clientHeight * 2
    triggerHook: 0
  .on "start end", ->
    $('.program2').css("display", "none")
    $('.program3').css("display", "block")
    $('.program4').css("display", "none")

    $('.block-top-2').css("display", "none")
    $('.block-top-3').css("display", "block")
    $('.block-top-4').css("display", "none")

    $('.block-bottom-2').css("display", "none")
    $('.block-bottom-3').css("display", "block")
    $('.block-bottom-4').css("display", "none")

    $('.block-bottom-left').css("display", "none")
  .addTo(controller)
  #.addIndicators()

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: document.documentElement.clientHeight * 3
    triggerHook: 0
  .on "start end", ->
    $('.program3').css("display", "none")
    $('.program4').css("display", "block")

    $('.block-top-3').css("display", "none")
    $('.block-top-4').css("display", "block")

    $('.block-bottom-3').css("display", "none")
    $('.block-bottom-4').css("display", "block")

    $('.block-bottom-left').css("display", "block")
  .addTo(controller)
  #.addIndicators()



  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-1'), 1, {opacity: 0})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 1})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 0})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 1})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 0})

  scene = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 2.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)






  scene = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight / 2
  .setPin('#slideshow .block.pinned')
  .addTo(controller)

  scene = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight / 2
  .setPin('#slideshow img.pinned')
  .on "end", ->
    $('#slideshow .lens').css('display', 'block')
  .addTo(controller)

  scene = new ScrollMagic.Scene
    triggerElement: '#after-show'
    triggerHook: 1
    duration: document.documentElement.clientHeight / 2
  .on "start", ->
    $('#slideshow .lens').css('display', 'none')
  .addTo(controller)



  $('.block-top-1 .btn1').click ->
    $('.block-top-1 .btn1').addClass('.button-active')
    $('.block-top-1 .btn2').removeClass('.button-active')

  $('.block-top-1 .btn2').click ->
    $('.block-top-1 .btn1').removeClass('.button-active')
    $('.block-top-1 .btn2').addClass('.button-active')

