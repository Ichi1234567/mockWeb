gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'html', ->
  gulp
    .src('app/*.html')
    .pipe($.template({}))
    .pipe($.usemin(
      css: [ $.csso(), $.minifyCss(), 'concat' ]
      html: [ $.minifyHtml() ]
      js: [ $.uglify() ]
    ))
    .pipe(gulp.dest('dist'))

