class exports.Todo extends Backbone.Model
  idAttribute: 'pk'

  defaults:
    content: 'Empty todo...'
    done: no

  toggle: ->
    @save done: not @get 'done'

  clear: ->
    @destroy()
    @view.remove()
