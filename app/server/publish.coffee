# Meteor.user
Meteor.publish "userData", ->
  if @userId
    return Meteor.users.find(@userId, {fields: {humanapi: 1}})
  else
    this.ready()
