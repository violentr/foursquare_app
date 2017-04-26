#= require jquery
##= require jquery_ujs
##= require spine/spine
##= require_self
##= require_tree .
#
class App extends Spine.Controller
  constructor: ->
    super
    @append("<a href='/'>Home</a>")

window.App = App

