gulp = require 'gulp'

# load plugins
$ = require('gulp-load-plugins')()

gulp.task 'coffeelint', ->
  gulp
    .src([
      'app/scripts/**/*.coffee'
      'app/scripts/**/*.cjsx'
    ])
    .pipe($.coffeelint('config/coffeelint.json'))
    .pipe($.coffeelint.reporter())


