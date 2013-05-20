`require = require('./cov_require.js')(require)`
utilities = require('./utilities.coffee').infect global
uuid = require 'uuid'

Unit   = require './Unit.coffee'
Script = require './Script.coffee'

parameterizable class Thing
   constructor: ->
      it = construct this
      
      it.id = uuid.v4()
      
      return it

module.exports = Paws =
   Thing: Thing
   
   Unit: Unit
   Script: Script
