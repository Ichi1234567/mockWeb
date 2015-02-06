gulp = require 'gulp'
# Load plugins
$ = require('gulp-load-plugins')()

# server
gulp.task('server', [ 'connect', 'clean:tmp' ], ->
  # style
  gulp.start 'styles'
  gulp.watch 'app/styles/**/*.scss', [ 'styles' ]
  # script
  gulp.start 'browserify:watch'
  # server
  gulp.start 'build:server'
)

