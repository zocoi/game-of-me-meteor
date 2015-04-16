
class @DashboardController extends RouteController
  onRun: ->
    console.log  "Dashboard View"
    @next()

  subscriptions: ->
    # Wait for logged in user
    Meteor.subscribe('userData')
    Meteor.subscribe('activities')

  data: ->
    activities: Activities.find()

  action: ->
    @render('Dashboard')
