gulp = require 'gulp'

gulp.task('test', ->
  gulp.start 'coffeelint'
)

gulp.task('default', ->
  gulp.start 'build'
)
