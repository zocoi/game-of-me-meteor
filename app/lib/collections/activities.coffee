@Activities = new Mongo.Collection('activities')

Schemas = {}

Schemas.Activity = new SimpleSchema
  id:
    type: String
    index: true
    unique: true

Activities.attachSchema Schemas.Activity

if Meteor.isServer
  Activities.allow
    insert: (userId, doc) ->
      false
    update: (userId, doc, fieldNames, modifier) ->
      false
    remove: (userId, doc) ->
      false

  Activities.deny
    insert: (userId, doc) ->
      true
    update: (userId, doc, fieldNames, modifier) ->
      true
    remove: (userId, doc) ->
      true
