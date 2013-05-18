`require = require('./cov_require.js')(require)`
utilities = require('./utilities.coffee').infect global
uuid = require 'uuid'

Unit   = require './Unit.coffee'
Script = require './Script.coffee'

parameterizable class Thing
   constructor: ->
      @id = uuid.v4() 
      
      return this

module.exports = Paws =
   Thing: Thing
   
   Unit: Unit
   Script: Script
