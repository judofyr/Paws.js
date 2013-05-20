`require = require('./cov_require.js')(require)`
utilities = require('./utilities.coffee').infect global
uuid = require 'uuid'

Unit   = require './Unit.coffee'
Script = require './Script.coffee'

parameterizable class Thing
   constructor: ->
      it = construct this
      
      it.id = uuid.v4()
      it.metadata = new Array
      
      it.metadata.unshift undefined if it._?.noughtify != no
      
      return it

module.exports = Paws =
   Thing: Thing
   
   Unit: Unit
   Script: Script
