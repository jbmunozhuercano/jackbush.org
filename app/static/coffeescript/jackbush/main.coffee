define (require) ->

  $ = require 'jquery'
  require 'jquery.fancybox'
  require 'jquery.scrollTo'


  # Determine whether we're dealing with a small screen device.
  maxSmallScreenWidth = 4  # The largest number of inches that is still considered a small screen
  isSmallScreen =
    if window.matchMedia
      window.matchMedia("(max-device-width: #{maxSmallScreenWidth}in)").matches
    else if window.screen
      window.screen.width / 96 < maxSmallScreenWidth
    else
      false


  class StickySlide
    constructor: ->
      @isSticky = false
      @$slide = $ '#slide-pink-with-border'
      @$slideLink = @$slide.find 'a'
      @$mainHeading = $ '#main-header h1'
      @getStickyPoint()
      @$win = $ window
      @$win.resize =>
        @getStickyPoint()
        @checkStickiness()
      @$win.scroll @checkStickiness

    getStickyPoint: =>
      # Calculate sticky point. Percentage offest must match value in CSS
      slideTop = @$mainHeading.offset().top - 0.18 * @$slideLink.height()
      @stickyPoint = slideTop - 50

    checkStickiness: =>
      isBelowStickyPoint = @$win.scrollTop() >= @stickyPoint
      if isBelowStickyPoint != @isSticky
        if isBelowStickyPoint
          @$slide.addClass 'sticky'
        else
          @$slide.removeClass 'sticky'
        @isSticky = isBelowStickyPoint


  $(document).ready ->

    # Smooth-scroll to top when the user clicks the bookmark.
    $('.logo > a').click (event) ->
      event.preventDefault()
      $.scrollTo 0, 300

    if not isSmallScreen
      stickySlide = new StickySlide
      $('#slide-pink-with-border a').fancybox()
