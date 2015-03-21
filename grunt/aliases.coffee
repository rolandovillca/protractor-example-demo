###
Implements the grunt clean configuration
@note Defines aliases for tasks.
@see https://github.com/firstandthird/load-grunt-config
###

module.exports =
  default: []
  build: [
    "clean:build"
    "coffeelint"
    "coffee"
  ]
  updateDriver: [
    "protractor_webdriver:update"
  ]
  testChrome: [
    "protractor:chrome"
  ]
  testFirefox: [
    "protractor:firefox"
  ]