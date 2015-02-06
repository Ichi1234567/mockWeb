gulp = require 'gulp'

# load plugins
$ = require('gulp-load-plugins')()

# clean compiled js
gulp.task('clean', ->
  gulp
    .src([
      '!coverage/*(PhantomJS)*'
      'dist/scripts/*-build.js'
    ])
    .pipe($.rimraf())
)

gulp.task('clean-js', ->
  gulp
    .src([
      'dist/scripts/**/*-build.js'
    ])
    .pipe($.rimraf())
)

gulp.task('clean:tmp', ->
  gulp
    .src([
      '.tmp/**/*'
    ])
    .pipe($.rimraf())
)

