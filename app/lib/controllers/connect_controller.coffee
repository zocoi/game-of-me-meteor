class @ConnectController extends RouteController
  onRun: ->
    console.log "Connect View"
    @next()

  onBeforeAction: ->
    currentUser = Meteor.user()
    @next()

  waitOn: ->

  data: ->
