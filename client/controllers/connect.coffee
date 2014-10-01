class @ConnectController extends RouteController
  onRun: ->
    console.log "Connect View"

  onBeforeAction: ->
    if !(Meteor.user() || Meteor.loggingIn())
      Router.go 'home'
      pause()

  waitOn: ->

  data: ->
