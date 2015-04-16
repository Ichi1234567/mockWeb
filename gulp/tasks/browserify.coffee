gulp = require 'gulp'
map = require 'vinyl-map'
source = require 'vinyl-source-stream'
browserify = require 'browserify'
pathmodify = require 'pathmodify'
watchify = require 'watchify'
babelify = require 'babelify'

# Load plugins
$ = require('gulp-load-plugins')()


get_name = (filename)->
  appRoot = '#{__dirname}/'
  fname = filename.replace(appRoot, '')
  fname.substring(fname.lastIndexOf('/')+1, fname.lastIndexOf('.'))

get_path = (filename)->
  appRoot = path.normalize('#{__dirname}/../../')
  fname = filename.replace(appRoot, '')
  fname.substring(0, fname.lastIndexOf('/')+1)

bundleApp = (isWatch)->
  distPath = if isWatch then '.tmp/scripts' else 'dist/scripts'
  map( (contents, filename)->
    fname = get_name(filename)
    pathOpts = {
      mods: [
        pathmodify.mod.dir('vendor', '../bower_components')
        pathmodify.mod.dir('utils', './reactjs/utils')
        pathmodify.mod.dir('stores', './reactjs/stores')
        pathmodify.mod.dir('components', './reactjs/components')
      ]
    }
    b = browserify(
      cache: {}
      fullPaths: false
      packageCache: {}
      debug: if isWatch then true else false
      entries: [filename]
      extensions: ['.coffee', '.cjsx', '.js', '.jsx']
    ).plugin(pathmodify(), pathOpts)
    b.transform 'coffee-reactify'
    b.transform 'reactify'
    b.transform(babelify.configure({
      extensions: [ '.js', '.es', '.es6', '.jsx', '.babel' ]
      optional: [ 'reactCompat' ]
    }))
    bundle = ->
      b
        .on('error', $.util.log )
        .bundle()
        .pipe(source("#{fname}-build.js"))
        .pipe(gulp.dest(distPath))
    if isWatch
      b = watchify(b)
      b.on('update', bundle)
    bundle()
  )

gulp.task 'browserify', [ 'coffeelint', 'eslint' ], ->
  gulp
    .src([
      'app/scripts/*.js'
      'app/scripts/*.coffee'
    ])
    .pipe(bundleApp())


gulp.task 'browserify:watch', [ 'clean-js' ], ->
  gulp
    .src([
      'app/scripts/*.js'
      'app/scripts/*.coffee'
    ])
    .pipe(bundleApp('watch'))

