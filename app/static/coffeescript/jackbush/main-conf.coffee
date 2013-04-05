require.config
  baseUrl: '/static/coffeescript/'
  waitSeconds: 200
  paths:
    jquery: '../js/jquery'
    'scrollMonitor': '../js/scrollMonitor'
    'jquery.fancybox': '../fancybox/jquery.fancybox'

  shim:
    jquery:
      exports: 'jQuery'

    'jquery.fancybox':
      deps: ['jquery']
