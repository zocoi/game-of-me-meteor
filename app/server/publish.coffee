# Meteor.user
Meteor.publish "userData", ->
  if @userId
    return Meteor.users.find(@userId, {fields: {humanapi: 1}})
  else
    @ready()


Meteor.publish "activities", ->
  currentUser = Meteor.users.findOne(@userId)
  console.log currentUser.humanapi
  if currentUser and currentUser.humanapi?
    resp = Humanapi.human.activities.get null, params: {access_token: currentUser.humanapi.accessToken}
    _.each resp.data, (activity)=>
      unless Activities.findOne(id: activity.id)
        Activities.insert activity
  Activities.find()


