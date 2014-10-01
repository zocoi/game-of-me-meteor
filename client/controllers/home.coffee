class @HomeController extends RouteController
  onRun: ->
    console.log  "Home View"

  waitOn: ->

  data: ->

  onBeforeAction: ->
    if Meteor.user() || Meteor.loggingIn()
      Router.go 'connect'
      pause()

  onAfterAction: ->
    # do some stuff after the action is invoked

  action: ->
    
