HomeController = RouteController.extend(
  onRun: ->
    App.track "Home View"
    return

  waitOn: ->

  data: ->


  action: ->
    @render()

)
