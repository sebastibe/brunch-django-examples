Model = require 'models/base/model'

module.exports = class Todo extends Model
  idAttribute: 'pk'

  defaults:
    title: ''
    completed: no

  initialize: ->
    super
    date = new Date()
    @set 'created', date.toISOString() if @isNew()

  toggle: ->
    @set completed: not @get('completed')

  isVisible: ->
    isCompleted = @get('completed')
