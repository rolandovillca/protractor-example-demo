###
Loading modules.
###
GruntLoader = require "load-grunt-config"
executionTime = require 'time-grunt'
path = require "path"

###
Exports the Grunt Loader configuration
###
module.exports = (grunt) ->
  executionTime grunt

  GruntLoader grunt,
    configPath: path.join process.cwd(), "grunt"
    init: true
    data:
      test: true
    loadGruntTasks:
      pattern: "grunt-*"
      config: require("./package.json")
      scope: "devDependencies"