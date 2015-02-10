gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'images', ->
  gulp
    .src([
      'app/images/**/*'
    ])
    .pipe(gulp.dest('dist/images'))

gulp.task 'images:server', ->
  gulp
    .src([
      'app/images/**/*'
    ])
    .pipe(gulp.dest('.tmp/images'))

