videoResize = ->
  video_width = 917
  video_height = 516

  if window.screen_w * 9 > window.screen_h * 16
    if window.screen_h < video_height
      video_height = window.screen_h

    video_width = video_height * 16 / 9
  else
    if window.screen_w < video_width
      video_width = window.screen_w
      video_height = $('.section.video .container').css('text-align', 'left')
    else
      video_height = $('.section.video .container').css('text-align', 'center')

    video_height = video_width * 9 / 16

  $('.section.video iframe').width(video_width)
  $('.section.video iframe').height(video_height)


onResize = ->
  window.screen_w = document.documentElement.clientWidth
  window.screen_h = document.documentElement.clientHeight

  videoResize()

  screen_min = if window.screen_w > window.screen_h then window.screen_h else window.screen_w
  slide_size = screen_min * 0.55
  $('.section.slideshow .circle-int').height(slide_size)
  $('.section.slideshow .circle-int').width(slide_size)
  $('.section.slideshow .slider .pic').height(slide_size)
  $('.section.slideshow .slider .pic').width(slide_size)


window.screen_w = 0
window.screen_h = 0


$ ->
  onResize()

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


  $('.section.main_car_animation .btn1').click ->
    $('.section.main_car_animation .btn1').addClass('button-active')
    $('.section.main_car_animation .btn2').removeClass('button-active')
    $('.section.main_car_animation .block-bottom-var1').css('display' : 'block')
    $('.section.main_car_animation .block-bottom-var2').css('display' : 'none')
  $('.section.main_car_animation .btn2').click ->
    $('.section.main_car_animation .btn1').removeClass('button-active')
    $('.section.main_car_animation .btn2').addClass('button-active')
    $('.section.main_car_animation .block-bottom-var1').css('display' : 'none')
    $('.section.main_car_animation .block-bottom-var2').css('display' : 'block')


#==========SCROLL MAGIC=====================================

  controller = new ScrollMagic.Controller

  scene_car_pin = new ScrollMagic.Scene
    triggerElement: '#car-screen'
    triggerHook: 'onLeave'
    duration: '401%'
    tweenChanges: true
  .setPin('#car-screen')
  .addTo(controller)


  caption = new TimelineMax()
  .to($('#car-screen .caption1'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('#car-screen .caption2'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('#car-screen .caption3'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('#car-screen .caption4'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})

  scene_car_caption_move = new ScrollMagic.Scene
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

  scene_car_back_color = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '400%'
    triggerHook: 0
  .setTween(back_color)
  .addTo(controller)



  scene_car_1_to_2 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    triggerHook: 0
  .on "start end", ->
    $('.program1').css("display", "block")
    $('.program2').css("display", "none")

    $('.block-top-1').css("display", "block")
    $('.block-top-2').css("display", "none")

    $('.block-bottom-1').css("display", "inline-block")
    $('.block-bottom-2').css("display", "none")

    $('.round-1').css("display", "block")
    $('.round-2').css("display", "none")
  .addTo(controller)
  #.addIndicators()

  scene_car_2_to_3 = new ScrollMagic.Scene
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
    $('.block-bottom-2').css("display", "inline-block")
    $('.block-bottom-3').css("display", "none")

    $('.round-1').css("display", "none")
    $('.round-2').css("display", "block")
    $('.round-3').css("display", "none")
  .addTo(controller)
  #.addIndicators()

  scene_car_3_to_4 = new ScrollMagic.Scene
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
    $('.block-bottom-3').css("display", "inline-block")
    $('.block-bottom-4').css("display", "none")

    $('.block-bottom-left').css("opacity", "0")

    $('.round-2').css("display", "none")
    $('.round-3').css("display", "block")
  .addTo(controller)
  #.addIndicators()

  scene_car_4_to_null = new ScrollMagic.Scene
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
    $('.block-bottom-4').css("display", "inline-block")

    $('.block-bottom-left').css("opacity", "1")

    $('.round-3').css("display", "none")
    $('.round-2').css("display", "block")
  .addTo(controller)
  .addIndicators()



  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-1'), 1, {opacity: 0})

  scene_car_1_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 1})

  scene_car_2_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 0})

  scene_car_2_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 1})

  scene_car_3_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 0})

  scene_car_3_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: document.documentElement.clientHeight * 2.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)



  scene_slides_pin = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight / 2
  .setPin('#slideshow .block.pinned')
  .addTo(controller)

  scene_slides_lens_show = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: document.documentElement.clientHeight / 2
  .setPin('#slideshow img.pinned')
  .on "end", ->
    $('#slideshow .lens').css('display', 'block')
  .addTo(controller)

  scene_slides_lens_hide = new ScrollMagic.Scene
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


$(window).resize ->
  onResize()



