module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        files: [
          expand: true
          cwd: 'app/static/'
          src: ['**/*.coffee']
          dest: 'app/static/'
          ext: '.js'
        ]
    sass:
      compile:
        options:
          compass: true
        files:
          'app/static/sass/site.css': 'app/static/sass/site.sass'
    requirejs:
      compile:
        options:
          appDir: './app/'
          dir: './app-built/'
          baseUrl: './static/coffeescript/'
          mainConfigFile: './app/static/coffeescript/jackbush/main-conf.js',
          optimizeCss: 'none'
          locale: 'en-us'
          generateSourceMaps: false
          inlineText: true
          stubModules: ['text', 'json']
          removeCombined: true
          waitSeconds: 7
          modules: [
            {name: 'jackbush/main'}
          ]
    modernizr:
      devFile: 'remote'
      outputFile: 'app/static/js/Modernizr.js'
      files: [
        'app/static/**/*.{js,css,scss,sass}'
        '!node_modules/**/*'
        '!lib/cache/**/*'
      ]
    csso:
      dist:
        files:
          'app-built/static/sass/site.css': ['app-built/static/sass/site.css']
    svgmin:
      dist:
        options:
          plugins: [
            removeViewBox: false  # Removing the viewBox prevents IE from scaling the SVG
          ]
        files: [
          cwd: 'app-built/static/'
          expand: true
          src: ['**/*.svg']
          dest: 'app-built/static/'
          ext: '.svg'
        ]
    php:
      dev:
        options:
          base: './app/'
          open: true
    watch:
      options:
        atBegin: true
      coffee:
        files: ['app/static/**/*.coffee']
        tasks: ['coffee']
      sass:
        files: ['app/static/**/*.sass']
        tasks: ['sass']


  # Load grunt plugins
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-requirejs'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-csso'
  grunt.loadNpmTasks 'grunt-modernizr'
  grunt.loadNpmTasks 'grunt-svgmin'
  grunt.loadNpmTasks 'grunt-php'

  # Define tasks.
  grunt.registerTask 'build', ['sass', 'coffee', 'requirejs', 'csso', 'svgmin']
  grunt.registerTask 'default', ['build']
  grunt.registerTask 'dev', ['php', 'watch']
