gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'html', ->
  gulp
    .src('app/*.html')
    .pipe($.template({}))
    .pipe($.usemin())
    .pipe(gulp.dest('dist'))

