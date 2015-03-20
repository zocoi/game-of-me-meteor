class @ConnectController extends RouteController
  onRun: ->
    console.log "Connect View"
    @next()

  onBeforeAction: ->
    currentUser = Meteor.user()
    if currentUser.humanapi
      Router.go 'dashboard'
    @next()

  waitOn: ->

  data: ->
