`require = require('./cov_require.js')(require)`
utilities = require('./utilities.coffee').infect global
uuid = require 'uuid'

module.exports = Paws =
   Unit: Unit     = require './Unit.coffee'
   Script: Script = require './Script.coffee'

   Thing: parameterizable class Thing
      constructor: (elements...) ->
         it = construct this
         
         it.id = uuid.v4()
         it.metadata = new Array
         it.push elements... if elements.length
         
         it.metadata.unshift undefined if it._?.noughtify != no
         
         return it
      
      push: (elements...) ->
         @metadata = @metadata.concat Relation.from elements
   
   Relation: parameterizable class Relation
      # Given a `Thing` (or `Array`s thereof), this will return a `Relation` to that thing.
      # 
      # @option responsible: Whether to create new relations as `responsible`
      @from: (it) ->
         if it instanceof Relation
            it.responsible @_?.responsible ? it.isResponsible
            return it
               
         if it instanceof Thing
            return new Relation(it, @_?.responsible ? false)
         if _.isArray(it)
            return it.map (el) => @from el
      
      # TODO: `construct()` (or `constructify()`) this
      constructor: (@to, @isResponsible = false) ->
      
      clone: -> new Relation @to, @isResponsible
      
      responsible:   chain (val) -> @isResponsible = val ? true
      irresponsible: chain       -> @isResponsible = false
