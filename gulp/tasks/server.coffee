gulp = require 'gulp'
# Load plugins
$ = require('gulp-load-plugins')()

# server
gulp.task('server', [ 'connect', 'clean:tmp' ], ->

  # image
  gulp.start 'images:server'
  gulp.watch 'app/images/**/*', [ 'images:server' ]
  # style
  gulp.start 'styles:server'
  gulp.watch 'app/styles/**/*.scss', [ 'styles:server' ]
  # script
  gulp.start 'browserify:watch'
  # server
  gulp.start 'build:server'
  gulp.watch 'app/*.html', [ 'build:server' ]

  $.watch [
    '.tmp/images/**/*'
    '.tmp/scripts/**/*'
    '.tmp/styles/**/*'
    '.tmp/*.html'
  ], (evt) ->
    gulp
      .src(evt.path)
      .pipe($.connect.reload())
)

