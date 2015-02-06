# Karma configuration
module.exports = (config) ->
  config.set({
    # base path, that will be used to resolve files and exclude
    basePath: '../'
    urlRoot: '/'
    frameworks: ["jasmine", "browserify"]
    plugins: [
      "karma-browserify"
      "karma-jasmine"
      "karma-coffee-preprocessor"
      "karma-coverage"
      "karma-chrome-launcher"
      "karma-firefox-launcher"
      "karma-phantomjs-launcher"
    ]
    # list of files / patterns to load in the browser
    #files: [
      #libs
      #our app!
      # 'app/assets/javascripts/<our-mini-app>/**'
      # mocked data
      # 'spec/javascripts/<our-mini-app>/mocked-data/<data-file>.js.coffee'
    #]
    # list of files to exclude
    exclude: [
    ]
    # enable / disable colors in the output (reporters and logs)
    colors: true
    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true
    proxies: {
      '/': 'http://localhost:3000/'
    }
    # Start these browsers currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: ['Chrome']
    # If browser does not capture in given timeout [ms] kill it
    captureTimeout: 5000
    # Continuous Integration mode
    # if true it capture browsers run tests and exit
    #singleRun: false
    # test results reporter to use
    # possible values: dots || progress || growl
    # reporters = ['progress'];
    reporters:  'dots'
    preprocessors: {
      '**/*.coffee': [ 'coffee' ]
    }
  })
