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

  car_btn_active = 1

  $('.section.main_car_animation .btn1').click ->
    $('.section.main_car_animation .btn1').addClass('button-active')
    $('.section.main_car_animation .btn2').removeClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').addClass('car-active')
    $('.section.main_car_animation .bottom-right-1-2').removeClass('car-active')
    car_btn_active = 1

  $('.section.main_car_animation .btn2').click ->
    $('.section.main_car_animation .btn1').removeClass('button-active')
    $('.section.main_car_animation .btn2').addClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').removeClass('car-active')
    $('.section.main_car_animation .bottom-right-1-2').addClass('car-active')
    car_btn_active = 2



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
  .to($('.section.main_car_animation .caption1'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption2'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption3'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption4'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})

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
    $('.section.main_car_animation .program1').addClass("car-active")
    $('.section.main_car_animation .program2').removeClass("car-active")

    $('.section.main_car_animation .info-1').addClass("car-active")
    $('.section.main_car_animation .info-2').removeClass("car-active")

    $('.section.main_car_animation .bottom-right-1-' + car_btn_active).addClass("car-active")
    $('.section.main_car_animation .bottom-right-2').removeClass("car-active")

    $('.section.main_car_animation .round-1').addClass("car-active")
    $('.section.main_car_animation .round-2').removeClass("car-active")
  .addTo(controller)
  #.addIndicators()

  scene_car_2_to_3 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: window.screen_h
    triggerHook: 0
  .on "start end", ->
    $('.section.main_car_animation .program1').removeClass("car-active")
    $('.section.main_car_animation .program2').addClass("car-active")
    $('.section.main_car_animation .program3').removeClass("car-active")

    $('.section.main_car_animation .info-1').removeClass("car-active")
    $('.section.main_car_animation .info-2').addClass("car-active")
    $('.section.main_car_animation .info-3').removeClass("car-active")

    $('.section.main_car_animation .bottom-right-1-' + car_btn_active).removeClass("car-active")
    $('.section.main_car_animation .bottom-right-2').addClass("car-active")
    $('.section.main_car_animation .bottom-right-3').removeClass("car-active")

    $('.section.main_car_animation .round-1').removeClass("car-active")
    $('.section.main_car_animation .round-2').addClass("car-active")
    $('.section.main_car_animation .round-3').removeClass("car-active")
  .addTo(controller)
  #.addIndicators()

  scene_car_3_to_4 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: window.screen_h * 2
    triggerHook: 0
  .on "start end", ->
    $('.section.main_car_animation .program2').removeClass("car-active")
    $('.section.main_car_animation .program3').addClass("car-active")
    $('.section.main_car_animation .program4').removeClass("car-active")

    $('.section.main_car_animation .info-2').removeClass("car-active")
    $('.section.main_car_animation .info-3').addClass("car-active")
    $('.section.main_car_animation .info-4').removeClass("car-active")

    $('.section.main_car_animation .bottom-right-2').removeClass("car-active")
    $('.section.main_car_animation .bottom-right-3').addClass("car-active")
    $('.section.main_car_animation .bottom-right-4').removeClass("car-active")

    $('.section.main_car_animation .bottom-left').removeClass("car-active")

    $('.section.main_car_animation .round-2').removeClass("car-active")
    $('.section.main_car_animation .round-3').addClass("car-active")
  .addTo(controller)
  #.addIndicators()

  scene_car_4_to_null = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: window.screen_h * 3
    triggerHook: 0
  .on "start end", ->
    $('.section.main_car_animation .program3').removeClass("car-active")
    $('.section.main_car_animation .program4').addClass("car-active")

    $('.section.main_car_animation .info-3').removeClass("car-active")
    $('.section.main_car_animation .info-4').addClass("car-active")

    $('.section.main_car_animation .bottom-right-3').removeClass("car-active")
    $('.section.main_car_animation .bottom-right-4').addClass("car-active")

    $('.section.main_car_animation .bottom-left').addClass("car-active")

    $('.section.main_car_animation .round-3').removeClass("car-active")
    $('.section.main_car_animation .round-2').addClass("car-active")
  .addTo(controller)
  .addIndicators()



  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-1'), 1, {opacity: 0})

  scene_car_1_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 1})

  scene_car_2_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 0})

  scene_car_2_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 1})

  scene_car_3_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 0})

  scene_car_3_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 2.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(controller)




  scene_slides_pin = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 2
  .setPin('.section.slideshow .block.pinned')
  .addTo(controller)

  scene_slides_lens_show = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 2
  .setPin('#slideshow img.pinned')
  .on "end", ->
    $('.section.slideshow .lens').css('display', 'block')
  .addTo(controller)

  scene_slides_lens_hide = new ScrollMagic.Scene
    triggerElement: '#after-show'
    triggerHook: 1
    duration: window.screen_h / 2
  .on "start", ->
    $('.section.slideshow .lens').css('display', 'none')
  .addTo(controller)

  lens_opacity = new TimelineMax()
  .to($('.section.slideshow .lens'), 1, {opacity: 0, ease: Power0.easeNone})

  scene_slides_lens_show = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 4
    offset: window.screen_h / 4
  .setTween(lens_opacity)
  .addTo(controller)

  slider_opacity = new TimelineMax()
  .to($('.section.slideshow .slider .pic'), 1, {opacity: 1, ease: Power0.easeNone})

  scene_slides_lens_show = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 4
    offset: window.screen_h / 4
  .setTween(slider_opacity)
  .addTo(controller)



$(window).resize ->
  onResize()



