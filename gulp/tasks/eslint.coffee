gulp = require 'gulp'

# Load plugins
$ = require('gulp-load-plugins')()

gulp.task 'eslint', ->
  gulp
    .src([
      'app/scripts/**/*.js'
      'app/scripts/**/*.es6'
      'app/scripts/**/*.jsx'
    ])
    .pipe($.eslint({ useEslintrc: true }))
    .pipe($.eslint.format())
    .pipe($.eslint.failAfterError())

