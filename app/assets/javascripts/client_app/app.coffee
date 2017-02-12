window.Pm =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

class Pm.Views.TestView extends Mn.View
  template: JST['test']

class Pm.Application extends Mn.Application
  region: 'body'
  onStart: ->
    @showView(new Pm.Views.TestView())
    Backbone.history.start pushState: true

$ ->
  app = new Pm.Application()
  app.start()
