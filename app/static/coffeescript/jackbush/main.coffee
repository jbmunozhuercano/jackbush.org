define (require) ->

  $ = require 'jquery'
  scrollMonitor = require 'scrollMonitor'
  require 'jquery.fancybox'

  # Determine whether we're dealing with a small screen device.
  maxSmallScreenWidth = 4  # The largest number of inches that is still considered a small screen
  isSmallScreen =
    if window.matchMedia
      window.matchMedia("(max-device-width: #{maxSmallScreenWidth}in)").matches
    else if window.screen
      window.screen.width / 96 < maxSmallScreenWidth
    else
      false

  if not isSmallScreen
    $(document).ready ->

      $slide = $ '#slide-pink-with-border'

      # Make the slide "sticky"
      watcher = scrollMonitor.create $slide[0], top: 50
      watcher.lock()
      watcher.partiallyExitViewport ->
        # @isAboveViewport may be undefined on the first call, so compare to false
        if @isAboveViewport != false
          $slide.addClass 'sticky'
      watcher.fullyEnterViewport ->
        $slide.removeClass 'sticky'

       # Add the fancybox
      $slide.fancybox()
