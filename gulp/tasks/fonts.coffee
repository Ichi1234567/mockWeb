gulp = require 'gulp'
mainBowerFiles = require 'main-bower-files'
# Load plugins
$ = require('gulp-load-plugins')()

gulp.task 'fonts', ->
  gulp
    .src(mainBowerFiles(), {
      base: 'app/bower_components'
    })
    .pipe($.filter('**/*.{eot,svg.ttf.woff}'))
    .pipe($.flatten())
    .pipe(gulp.dest('dist/fonts'))

