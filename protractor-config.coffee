###
Configuration required for selenium server.
###
exports.config =
  #seleniumAddress: 'http://localhost:4444/wd/hub',
  seleniumServerJar: './node_modules/protractor/selenium/selenium-server-standalone-2.45.0.jar'
  seleniumPort: null  # Server will find its own unused port.
  seleniumArgs: ['-browserTimeout=60']
  #capabilities: {
  #  browserName: 'chrome'
  #},

  specs: ['build/tests/*_spec.{js, coffee}']

  baseUrl: 'http://www.angular.org'
  
  jasmineNodeOpts:
    showColors: true
    defaultTimeoutInterval: 30000
    isVerbose: true
    includeStackTrace: true

  allScriptsTimeout: 30000
  #directConnect: true