# Client and Server Routes

Router.configure
  layoutTemplate: "MasterLayout"
  loadingTemplate: "Loading"
  notFoundTemplate: "NotFound"

Router.route "/", name: "home"
Router.route "/dashboard", name: "dashboard"
Router.route "/connect", name: "connect"
Router.route "/connect/finish", name: "connectFinish", where: "server"
