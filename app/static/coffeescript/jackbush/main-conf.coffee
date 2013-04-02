require.config
  baseUrl: '/static/coffeescript/'
  waitSeconds: 200
  paths:
    jquery: '../js/jquery'
    'scrollMonitor': '../js/scrollMonitor'

  shim:
    jquery:
      exports: 'jQuery'
