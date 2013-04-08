require.config
  baseUrl: '/static/coffeescript/'
  waitSeconds: 200
  paths:
    jquery: '../js/jquery'
    'jquery.fancybox': '../fancybox/jquery.fancybox'
    'jquery.scrollTo': '../js/jquery.scrollTo'

  shim:
    jquery:
      exports: 'jQuery'

    'jquery.fancybox':
      deps: ['jquery']

    'jquery.scrollTo':
      deps: ['jquery']
