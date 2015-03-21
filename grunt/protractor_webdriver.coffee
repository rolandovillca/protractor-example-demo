###
Implements the grunt clean configuration
@note Start and update selenium driver (e.g. chrome).
@see https://www.npmjs.com/package/grunt-protractor-webdriver
###

module.exports =
  start:
    options:
      keepAlive: false
      path: "node_modules/protractor/bin/"
      command: "webdriver-manager start"
  update:
    options:
      keepAlive: false,
      path: "node_modules/protractor/bin/"
      command: "webdriver-manager update"