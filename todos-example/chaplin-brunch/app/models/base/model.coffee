Chaplin = require 'chaplin'

module.exports = class Model extends Chaplin.Model
  # Mixin a synchronization state machine
  # _(@prototype).extend Chaplin.SyncMachine
  url: ->
    origUrl = Chaplin.Model::url.call(this)
    origUrl += (if origUrl.endsWith("/") then "" else "/")