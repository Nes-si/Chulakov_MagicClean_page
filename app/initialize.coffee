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


  captionEase = SlowMo.ease.config(0.2, 0.3, false)

  caption = new TimelineMax()
  .to($('.section.main_car_animation .caption1'), 1, {'transform': 'translate3D(' + window.screen_w + 'px, 0, 0)', ease: captionEase})
  .to($('.section.main_car_animation .caption2'), 1, {'transform': 'translate3D(' + window.screen_w + 'px, 0, 0)', ease: captionEase})
  .to($('.section.main_car_animation .caption3'), 1, {'transform': 'translate3D(' + window.screen_w + 'px, 0, 0)', ease: captionEase})
  .to($('.section.main_car_animation .caption4'), 1, {'transform': 'translate3D(' + window.screen_w + 'px, 0, 0)', ease: captionEase})

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
    $('.section.main_car_animation .program1').addClass("car-element-active")
    $('.section.main_car_animation .program2').removeClass("car-element-active")

    $('.section.main_car_animation .info-1').addClass("car-element-active")
    $('.section.main_car_animation .info-2').removeClass("car-element-active")

    $('.section.main_car_animation .bottom-right-1-' + window.car_btn_active).addClass("car-element-active")
    $('.section.main_car_animation .bottom-right-2').removeClass("car-element-active")

    $('.section.main_car_animation .car-1').addClass("car-active")
    $('.section.main_car_animation .car-2').removeClass("car-active")

    $('.section.main_car_animation .round-1').addClass("car-active")
    $('.section.main_car_animation .round-2').removeClass("car-active")
  .addTo(window.controller)
  #.addIndicators()


  window.scene_car_2_to_3 = new ScrollMagic.Scene
    triggerElement: "#car-screen"
    duration: '100%'
    offset: window.screen_h
    triggerHook: 0
  .on "start end", ->
    $('.section.main_car_animation .program1').removeClass("car-element-active")
    $('.section.main_car_animation .program2').addClass("car-element-active")
    $('.section.main_car_animation .program3').removeClass("car-element-active")

    $('.section.main_car_animation .info-1').removeClass("car-element-active")
    $('.section.main_car_animation .info-2').addClass("car-element-active")
    $('.section.main_car_animation .info-3').removeClass("car-element-active")

    $('.section.main_car_animation .bottom-right-1-' + window.car_btn_active).removeClass("car-element-active")
    $('.section.main_car_animation .bottom-right-2').addClass("car-element-active")
    $('.section.main_car_animation .bottom-right-3').removeClass("car-element-active")

    $('.section.main_car_animation .car-1').removeClass("car-active")
    $('.section.main_car_animation .car-2').addClass("car-active")
    $('.section.main_car_animation .car-3').removeClass("car-active")

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
    $('.section.main_car_animation .program2').removeClass("car-element-active")
    $('.section.main_car_animation .program3').addClass("car-element-active")
    $('.section.main_car_animation .program4').removeClass("car-element-active")

    $('.section.main_car_animation .info-2').removeClass("car-element-active")
    $('.section.main_car_animation .info-3').addClass("car-element-active")
    $('.section.main_car_animation .info-4').removeClass("car-element-active")

    $('.section.main_car_animation .bottom-right-2').removeClass("car-element-active")
    $('.section.main_car_animation .bottom-right-3').addClass("car-element-active")
    $('.section.main_car_animation .bottom-right-4').removeClass("car-element-active")

    $('.section.main_car_animation .bottom-left').removeClass("car-element-active")

    $('.section.main_car_animation .car-2').removeClass("car-active")
    $('.section.main_car_animation .car-3').addClass("car-active")

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
    $('.section.main_car_animation .program3').removeClass("car-element-active")
    $('.section.main_car_animation .program4').addClass("car-element-active")

    $('.section.main_car_animation .info-3').removeClass("car-element-active")
    $('.section.main_car_animation .info-4').addClass("car-element-active")

    $('.section.main_car_animation .bottom-right-3').removeClass("car-element-active")
    $('.section.main_car_animation .bottom-right-4').addClass("car-element-active")

    $('.section.main_car_animation .bottom-left').addClass("car-element-active")

    $('.section.main_car_animation .car-3').removeClass("car-active")

    $('.section.main_car_animation .round-3').removeClass("car-active")
    $('.section.main_car_animation .round-4').addClass("car-active")
  .addTo(window.controller)
  #.addIndicators()



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

  window.sm_inited = 1

###
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
###



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

  window.scene_slides_pin.duration(window.screen_h / 2)

  window.scene_slides_lens_show.duration(window.screen_h / 2)

  window.scene_slides_lens_hide.duration(window.screen_h / 2)

  #window.scene_slides_lens_opacity.duration(window.screen_h / 4)
  #window.scene_slides_lens_opacity.offset(window.screen_h / 4)

  #window.scene_slides_slider_opacity.duration(window.screen_h / 4)
  #window.scene_slides_slider_opacity.offset(window.screen_h / 4)


iPadScrollInit = ->
  $('.section.main_car_animation .ipad-scroll').css('display', 'block')

  $('.section.main_car_animation .caption').each (i, elem) ->
    $(elem).addClass('caption-iPad')
    $(elem).addClass('car-element-passive')
    if i == 0
      $(elem).addClass('car-element-active')


  ipadPageChange = (pageFrom, pageTo) ->
    $('.section.main_car_animation .program' + pageTo).addClass("car-element-active")
    $('.section.main_car_animation .program' + pageFrom).removeClass("car-element-active")

    $('.section.main_car_animation .info-' + pageTo).addClass("car-element-active")
    $('.section.main_car_animation .info-' + pageFrom).removeClass("car-element-active")

    if pageTo == 1
      $('.section.main_car_animation .bottom-right-' + pageTo + '-' + window.car_btn_active).addClass("car-element-active")
    else
      $('.section.main_car_animation .bottom-right-' + pageTo).addClass("car-element-active")

    if pageFrom == 1
      $('.section.main_car_animation .bottom-right-' + pageFrom + '-' + window.car_btn_active).removeClass("car-element-active")
    else
      $('.section.main_car_animation .bottom-right-' + pageFrom).removeClass("car-element-active")

    $('.section.main_car_animation .caption' + pageTo).addClass("car-element-active")
    $('.section.main_car_animation .caption' + pageFrom).removeClass("car-element-active")

    $('.section.main_car_animation .car-' + pageTo).addClass("car-active")
    if pageFrom != 4
      $('.section.main_car_animation .car-' + pageFrom).removeClass("car-active")

    $('.section.main_car_animation .round-' + pageTo).addClass("car-active")
    $('.section.main_car_animation .round-' + pageFrom).removeClass("car-active")


  $('.section.main_car_animation .next.scroll-btn').click ->
    switch window.iPadPage
      when 1
        ipadPageChange(1, 2)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#97d9ec", ease: Power0.easeNone})
        $('.section.main_car_animation .prev.scroll-btn').removeClass('scroll-btn-inactive')
      when 2
        ipadPageChange(2, 3)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#97c1ec", ease: Power0.easeNone})
      when 3
        ipadPageChange(3, 4)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#82bcf8", ease: Power0.easeNone})
      else
        window.iPadPage--
    window.iPadPage++
    if (window.iPadPage > 3)
      $('.section.main_car_animation .next.scroll-btn').addClass('scroll-btn-inactive')

  $('.section.main_car_animation .prev.scroll-btn').click ->
    switch window.iPadPage
      when 2
        ipadPageChange(2, 1)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#97e5ec", ease: Power0.easeNone})
      when 3
        ipadPageChange(3, 2)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#97d9ec", ease: Power0.easeNone})
      when 4
        ipadPageChange(4, 3)
        TweenMax.to($('.section.main_car_animation'), 0.5, {backgroundColor: "#82bcf8", ease: Power0.easeNone})
        $('.section.main_car_animation .next.scroll-btn').removeClass('scroll-btn-inactive')
      else
        window.iPadPage++
    window.iPadPage--
    if (window.iPadPage < 2)
      $('.section.main_car_animation .prev.scroll-btn').addClass('scroll-btn-inactive')

  $('.section.slideshow').css('min-height', '100vh')
  $('.section.slideshow .lens').css('display', 'none')



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

  if window.screen_w < 1140
    commonScale = window.screen_w / 1140
    cleanerScale = commonScale / 3 + 0.66
    cleanerRight = commonScale * 2 * 3.5 - 3.5
    containerPadding = commonScale * 100
    textWidth = commonScale * 65 / 2 + 32.5

    $('.section.new_level .cleaner-pic').css('transform', 'scale(' + cleanerScale + ')')
    $('.section.new_level .cleaner-pic').css('right', cleanerRight + '%')
    $('.section.new_level .container').css('padding-top', containerPadding + 'px')
    $('.section.new_level .container').css('padding-bottom', containerPadding + 'px')
    $('.section.new_level .block-text').css('width', textWidth + '%')
  else
    $('.section.new_level .cleaner-pic').css('transform', 'scale(1)')
    $('.section.new_level .cleaner-pic').css('right', '3.5%')
    $('.section.new_level .container').css('padding-top', '100px')
    $('.section.new_level .container').css('padding-bottom', '100px')
    $('.section.new_level .block-text').css('width', '65%')


  if window.screen_w < 810
    btnScale = window.screen_w / 810 / 1.5 + 0.25
    $('.section.main_car_animation .button').each (i, elem) ->
      $(elem).css('transform', 'scale(' + btnScale + ')')
  else
    $('.section.main_car_animation .button').each (i, elem) ->
      $(elem).css('transform', 'scale(1)')


  if window.screen_w < 1250 and window.isiPad
    console.log 'yes'
    captSize = window.screen_w / 1250 * 120
    $('.section.main_car_animation .caption').each (i, elem) ->
      $(elem).css('font-size', captSize + 'px')
  else
    console.log 'no'
    $('.section.main_car_animation .caption').each (i, elem) ->
      $(elem).css('font-size', '120px')

  $('.section.main_car_animation .info-bottom-cont').height($('.section.main_car_animation .bottom-right').height())

  if window.sm_inited
    scrollMagicUpdate()




window.screen_w = 0
window.screen_h = 0

window.sm_inited = 0

window.pult_elem = 0

window.isiPad = false
window.iPadPage = 1


$ ->
  window.isiPad = navigator.userAgent.match(/iPad/i) != null

  onResize()

  $('.slider').slick
    dots: false
    arrows: false
    infinite: true
    speed: 500
    fade: true
    cssEase: 'linear'

  $('.section.slideshow .prev.btn').click ->
    $('.slider').slick('slickPrev')

  $('.section.slideshow .next.btn').click ->
    $('.slider').slick('slickNext')


  $('.section.pults td').each (i, elem) ->
    $(elem).hover((e) ->
      $(elem).find('.caption')
        .addClass('pult-td-active')
      $(elem).find('p')
        .addClass('pult-td-active')
      window.pult_elem = i
    , (e) ->
      $(elem).find('.caption')
        .removeClass('pult-td-active')
      $(elem).find('p')
        .removeClass('pult-td-active')
      window.pult_elem = 0
    )


  window.car_btn_active = 1

  $('.section.main_car_animation .btn1').click ->
    $('.section.main_car_animation .btn1').addClass('button-active')
    $('.section.main_car_animation .btn2').removeClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').addClass('car-element-active')
    $('.section.main_car_animation .bottom-right-1-2').removeClass('car-element-active')
    window.car_btn_active = 1

  $('.section.main_car_animation .btn2').click ->
    $('.section.main_car_animation .btn1').removeClass('button-active')
    $('.section.main_car_animation .btn2').addClass('button-active')
    $('.section.main_car_animation .bottom-right-1-1').removeClass('car-element-active')
    $('.section.main_car_animation .bottom-right-1-2').addClass('car-element-active')
    window.car_btn_active = 2

  if window.isiPad
    iPadScrollInit()
  else
    scrollMagicInit()



$(window).on('resize', debounce(onResize, 150, false))
