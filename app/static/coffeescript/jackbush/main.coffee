define (require) ->

  $ = require 'jquery'
  scrollMonitor = require 'scrollMonitor'

  $(document).ready ->

    # Make the slide "sticky"
    $el = $ '#slide-pink-with-border'
    watcher = scrollMonitor.create $el[0], top: 50
    watcher.lock()
    watcher.partiallyExitViewport ->
      if @isAboveViewport
        $el.addClass 'sticky'
    watcher.fullyEnterViewport ->
      $el.removeClass 'sticky'
