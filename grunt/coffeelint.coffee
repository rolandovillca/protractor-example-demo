###
Implements the grunt coffeelint configuration
@note Checks if all coffee files obey the defined rules
@see https://www.npmjs.org/package/grunt-coffeelint
###

module.exports =
  options:
    configFile: "coffeelint.json"
    force: false
  compile:
    expand: true
    src: [
      "src/**/*.coffee"
      "test/**/*.coffee"
      "grunt/**/*.coffee"
    ]