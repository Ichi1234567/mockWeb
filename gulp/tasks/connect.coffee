gulp = require 'gulp'

$ = require('gulp-load-plugins')()

gulp.task 'connect', ->
  $.connect.server(
    root: [
      '.tmp'
      'dist'
      'app'
      '.'
    ]
    port: 8080
    livereload: true
  )
