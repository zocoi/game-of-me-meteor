
class @DashboardController extends RouteController
  onRun: ->
    console.log  "Dashboard View"
    @next()

  subscriptions: ->

  action: ->
    @render('Dashboard')
