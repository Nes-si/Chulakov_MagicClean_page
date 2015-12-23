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



scrollMagicInit = ->
  window.controller = new ScrollMagic.Controller

  window.scene_car_pin = new ScrollMagic.Scene
    triggerElement: '#car-screen'
    triggerHook: 'onLeave'
    duration: '401%'
    tweenChanges: true
  .setPin('#car-screen')
  .addTo(window.controller)


  caption = new TimelineMax()
  .to($('.section.main_car_animation .caption1'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption2'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption3'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})
  .to($('.section.main_car_animation .caption4'), 1, {'left': '100%', 'transform': 'translateX(100%)', ease: Power0.easeNone})

  window.scene_car_caption_move = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '400%'
    triggerHook: 0
  .setTween(caption)
  #.addIndicators()
  .addTo(window.controller)


  back_color = new TimelineMax()
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97e5ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97d9ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#97c1ec", ease: Power0.easeNone})
  .to($('.section.main_car_animation'), 1, {backgroundColor: "#82bcf8", ease: Power0.easeNone})

  window.scene_car_back_color = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '400%'
    triggerHook: 0
  .setTween(back_color)
  .addTo(window.controller)


  window.scene_car_1_to_2 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    triggerHook: 0
  .on "start end", ->
    $('.section.main_car_animation .program1').addClass("car-active")
    $('.section.main_car_animation .program2').removeClass("car-active")



    $('.section.main_car_animation .info-1').addClass("car-active")
    $('.section.main_car_animation .info-2').removeClass("car-active")

    $('.section.main_car_animation .bottom-right-1-' + window.car_btn_active).addClass("car-active")
    $('.section.main_car_animation .bottom-right-2').removeClass("car-active")

    $('.section.main_car_animation .round-1').addClass("car-active")
    $('.section.main_car_animation .round-2').removeClass("car-active")
  .addTo(window.controller)
  .addIndicators()

  tw_complete = ->
    $('.section.main_car_animation .program1').css('top', '0')

  window.scene_car_2_to_3 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: window.screen_h
    triggerHook: 0
  .on "start end", ->
    if $('.section.main_car_animation .program1').hasClass("car-active")
      new TweenMax.to($('.section.main_car_animation .program1'), 1, {'top': '-100px', onComplete: ->
        $('.section.main_car_animation .program1').css('top', '0')
      })


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
  .addTo(window.controller)
  #.addIndicators()

  window.scene_car_3_to_4 = new ScrollMagic.Scene
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
    $('.section.main_car_animation .round-4').removeClass("car-active")
  .addTo(window.controller)
  #.addIndicators()

  window.scene_car_4_to_null = new ScrollMagic.Scene
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
    $('.section.main_car_animation .round-4').addClass("car-active")
  .addTo(window.controller)
  #.addIndicators()


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-1'), 1, {opacity: 0})

  window.scene_car_1_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(window.controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 1})

  window.scene_car_2_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 0.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(window.controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-2'), 1, {opacity: 0})

  window.scene_car_2_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(window.controller)

  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 1})

  window.scene_car_3_show = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 1.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(window.controller)


  car_anim = new TimelineMax()
  .to($('.section.main_car_animation .car-3'), 1, {opacity: 0})

  window.scene_car_3_hide = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '20%'
    offset: window.screen_h * 2.8
    triggerHook: 0
  .setTween(car_anim)
  .addTo(window.controller)


  window.scene_slides_pin = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 2
  .setPin('.section.slideshow .block.pinned')
  .addTo(window.controller)

  window.scene_slides_lens_show = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 2
  .setPin('#slideshow img.pinned')
  .on "end", ->
    $('.section.slideshow .lens').css('display', 'block')
  .addTo(window.controller)

  window.scene_slides_lens_hide = new ScrollMagic.Scene
    triggerElement: '#after-show'
    triggerHook: 1
    duration: window.screen_h / 2
  .on "start", ->
    $('.section.slideshow .lens').css('display', 'none')
  .addTo(window.controller)

  lens_opacity = new TimelineMax()
  .to($('.section.slideshow .lens'), 1, {opacity: 0, ease: Power0.easeNone})

  window.scene_slides_lens_opacity = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 4
    offset: window.screen_h / 4
  .setTween(lens_opacity)
  .addTo(window.controller)

  slider_opacity = new TimelineMax()
  .to($('.section.slideshow .slider .pic'), 1, {opacity: 1, ease: Power0.easeNone})

  window.scene_slides_slider_opacity = new ScrollMagic.Scene
    triggerElement: '#slideshow'
    triggerHook: 'onLeave'
    duration: window.screen_h / 4
    offset: window.screen_h / 4
  .setTween(slider_opacity)
  .addTo(window.controller)

  window.sm_inited = 1


scrollMagicUpdate = ->
  window.scene_car_pin.duration('401%')

  window.scene_car_caption_move.duration('400%')

  window.scene_car_back_color.duration('400%')

  window.scene_car_1_to_2.duration('100%')

  window.scene_car_2_to_3.duration('100%')
  window.scene_car_2_to_3.offset(window.screen_h)

  window.scene_car_3_to_4.duration('100%')
  window.scene_car_3_to_4.offset(window.screen_h * 2)

  window.scene_car_4_to_null.duration('100%')
  window.scene_car_4_to_null.offset(window.screen_h * 3)

  window.scene_car_1_hide.duration('20%')
  window.scene_car_1_hide.offset(window.screen_h * 0.8)

  window.scene_car_2_show.duration('20%')
  window.scene_car_2_show.offset(window.screen_h * 0.8)

  window.scene_car_2_hide.duration('20%')
  window.scene_car_2_hide.offset(window.screen_h * 1.8)

  window.scene_car_3_show.duration('20%')
  window.scene_car_3_show.offset(window.screen_h * 1.8)

  window.scene_car_3_hide.duration('20%')
  window.scene_car_3_hide.offset(window.screen_h * 2.8)

  window.scene_slides_pin.duration(window.screen_h / 2)

  window.scene_slides_lens_show.duration(window.screen_h / 2)

  window.scene_slides_lens_hide.duration(window.screen_h / 2)

  window.scene_slides_lens_opacity.duration(window.screen_h / 4)
  window.scene_slides_lens_opacity.offset(window.screen_h / 4)

  window.scene_slides_slider_opacity.duration(window.screen_h / 4)
  window.scene_slides_slider_opacity.offset(window.screen_h / 4)


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

  if window.sm_inited
    scrollMagicUpdate()



window.screen_w = 0
window.screen_h = 0

window.sm_inited = 0


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

  window.car_btn_active = 1

  $('.section.main_car_animation .btn1').click ->
    $('.section.main_car_animation .btn1').addClass('button-active')
    $('.section.main_car_animation .btn2').removeClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').addClass('car-active')
    $('.section.main_car_animation .bottom-right-1-2').removeClass('car-active')
    window.car_btn_active = 1

  $('.section.main_car_animation .btn2').click ->
    $('.section.main_car_animation .btn1').removeClass('button-active')
    $('.section.main_car_animation .btn2').addClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').removeClass('car-active')
    $('.section.main_car_animation .bottom-right-1-2').addClass('car-active')
    window.car_btn_active = 2

  scrollMagicInit()



$(window).on('resize', debounce(onResize, 150, false))
