gulp = require 'gulp'
# Load plugins
$ = require('gulp-load-plugins')()

gulp.task 'styles', [ 'scsslint' ], ->
  gulp
    .src('app/styles/**/*.scss')
    .pipe($.compass(
      config_file: 'config/compass.config.dist.rb'
      sass: 'app/styles'
      css: 'dist/styles'
      relative: false
      bundle_exec: true
    ))
    .on('error', (err) ->
      console.log err
      @emit 'end'
    )
    .pipe(gulp.dest('dist/styles'))

gulp.task 'styles:server', ->
  gulp
    .src('app/styles/**/*.scss')
    .pipe($.compass(
      config_file: 'config/compass.config.rb'
      sass: 'app/styles'
      css: '.tmp/styles'
      relative: false
      bundle_exec: true
      debug: true
      sourcemap: true
    ))
    .on('error', (err) ->
      console.log err
      @emit 'end'
    )
    .pipe(gulp.dest('.tmp/styles'))
