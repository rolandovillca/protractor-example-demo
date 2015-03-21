###
Implements the grunt clean configuration
@note Deletes the directories that are specified
@see https://www.npmjs.org/package/grunt-contrib-clean
###

module.exports =
  options:
    force: false
    bare: true
  build:
    src: ["build"]