#!/usr/bin/env coffee

path = require 'path'
shelljs = require 'shelljs'
{find, rm, cp, mv} = require 'shelljs'
pkgmeta = require './package'
{quote} = require 'shell-quote'
child_process = require 'child_process'


NODE_MODULES = path.join __dirname, 'node_modules/'
NODE_BIN_DIR = "#{NODE_MODULES}.bin/"
APP_DIR = './app/'
APP_BUILT_DIR = './app-built/'


exec = (cmd, args) ->
  shelljs.exec quote([cmd, args...])

spawn = (args...) ->
  proc = child_process.spawn args...
  proc.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  proc.stdout.on 'data', (data) ->
    console.log data.toString()


task 'build', "build the #{pkgmeta.name} static assets", (opts) ->
  rm '-rf', APP_BUILT_DIR
  cp '-r', APP_DIR, APP_BUILT_DIR
  staticDir = "#{APP_BUILT_DIR}static/"

  console.log 'Compiling CoffeeScript files...'
  exec "#{NODE_BIN_DIR}coffee", ['-c', '--map', staticDir]

  console.log 'Compiling Stylus files...'
  exec "#{NODE_BIN_DIR}stylus", ['--use', 'nib', staticDir]

  console.log 'Optimizing AMD modules...'
  exec "#{NODE_BIN_DIR}r.js", ['-o', 'jackbush.build.js']

  # r.js insists on creating a new build directory. After it does, replace the
  # original build directory with it.
  rm '-rf', APP_BUILT_DIR
  mv './app-built.r', APP_BUILT_DIR

  files = find(staticDir).filter (f) -> path.extname(f) is '.js'
  for f in files
    console.log "Optimizing #{f}..."
    exec "#{NODE_BIN_DIR}uglifyjs", [f, '--compress', '--no-copyright', '-o', f]

  files = find(staticDir).filter (f) -> path.extname(f) is '.css'
  for f in files
    console.log "Optimizing #{f}..."
    exec "#{NODE_BIN_DIR}csso", [f, f]


task 'watch', "compile the #{pkgmeta.name} static assets as they change", ->
  spawn "#{NODE_BIN_DIR}coffee", ['--watch', '--compile', '--map', './app/static/coffeescript/']
  spawn "#{NODE_BIN_DIR}stylus", ['--use', 'nib', '--watch', './app/static/stylus/']
