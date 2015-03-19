class @DashboardController extends RouteController
  onRun: ->
    console.log  "Home View"
    @next()

  waitOn: ->

  data: ->

  onBeforeAction: ->
    @next()

  onAfterAction: ->
    # do some stuff after the action is invoked

  action: ->
