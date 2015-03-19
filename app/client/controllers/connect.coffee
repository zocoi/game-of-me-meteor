class @ConnectController extends RouteController
  onRun: ->
    console.log "Connect View"
    @next()

  onBeforeAction: ->
    currentUser = Meteor.user()
    if !(currentUser || Meteor.loggingIn())
      Router.go 'home'
    console.log currentUser
    if currentUser.humanapi
      Router.go 'dashboard'
    @next()

  waitOn: ->

  data: ->
