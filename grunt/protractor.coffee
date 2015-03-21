###
Implements the grunt clean configuration
@note Read config parameters from config.js file, for selenium configuraton.
@see https://www.npmjs.com/package/grunt-protractor-runner
###

module.exports =
  options:
    configFile: "./protractor-config"
    keepAlive: true
    noColor: false
    args:
      seleniumPort: 4444
      includeStackTrace: false
      verbose: false
  chrome:
    options:
      args:
        browser: "chrome"
  firefox:
    options:
      args:
        browser: "firefox"