Collection = require 'models/base/collection'
Todo = require 'models/todo'

module.exports = class Todos extends Collection
  url: '/api/tasks/'
  model: Todo

  allAreCompleted: ->
    @getCompleted().length is @length

  getCompleted: ->
    @where completed: yes

  getActive: ->
    @where completed: no

  comparator: (todo) ->
    todo.get('created')
