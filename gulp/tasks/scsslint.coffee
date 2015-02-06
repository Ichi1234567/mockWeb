gulp = require 'gulp'

# load plugins
$ = require('gulp-load-plugins')()

gulp.task 'scsslint', ->
  gulp
    .src('app/styles/**/*.scss')
    .pipe($.scssLint({
      bundleExec: true
    }))


