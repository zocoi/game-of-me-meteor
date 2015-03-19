Meteor.publish "userData", ->
  if @userId
    return Meteor.users.find({_id: @userId},
                             {fields: {'humanapi': 1}})
  else
    this.ready()
