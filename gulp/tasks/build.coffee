gulp = require 'gulp'
$ = require('gulp-load-plugins')()

# build
gulp.task 'build', (cb) ->
  runSequence = require 'run-sequence'
  runSequence(
    'clean'
    [
      'browserify'
      'styles'
      'images'
      'fonts'
    ]
    'html'
  , ->
    $.util.log $.util.colors.cyan 'All build task done!'
    cb()
    livereload: true
  )

gulp.task 'build:server', ->
  gulp
    .src('app/*.html')
    .pipe($.fileInclude({
      prefix: '@@'
      basepath: '@file'
    }))
    .pipe(gulp.dest('.tmp'))

