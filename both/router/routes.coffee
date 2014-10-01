#
# Client and Server Routes
#
Router.configure
  layoutTemplate: "MasterLayout"
  loadingTemplate: "Loading"
  notFoundTemplate: "NotFound"
  templateNameConverter: "upperCamelCase"
  routeControllerNameConverter: "upperCamelCase"

Router.map ->
  @route "home", path: "/"
  @route "connect", path: "/connect"
  @route "connectFinish", path: "/connect/finish", where: "server"
  return
