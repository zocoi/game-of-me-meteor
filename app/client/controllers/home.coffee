class @HomeController extends RouteController
  onRun: ->
    console.log  "Home View"
    @next()

  subscriptions: ->

  data: ->

  onBeforeAction: ->
    if Meteor.user() || Meteor.loggingIn()
        Router.go 'connect'
    @next()

  onAfterAction: ->
    # do some stuff after the action is invoked

  action: ->

