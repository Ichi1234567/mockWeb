gulp = require 'gulp'

# Load plugins
$ = require('gulp-load-plugins')()

gulp.task 'coffee', ['clean-js', 'coffeelint', 'eslint'], ->
  gulp
    .src('app/scripts/coffee/**/*.coffee')
    .pipe($.changed('dist/scripts/coffee/'))
    .pipe($.coffee({ bare:false }))
    .pipe(gulp.dest('dist/scripts/coffee/'))
    .on('error', $.util.log)

gulp.task 'coffee:watch', ['coffee'], ->
  gulp.watch(
    ['app/scripts/coffee/**/*.coffee']
    ['coffee']
  )

