Schemas = {}

Schemas.User = new SimpleSchema(
  emails:
    type: [Object]

  "emails.$.address":
    type: String
    regEx: SimpleSchema.RegEx.Email

  "emails.$.verified":
    type: Boolean

  createdAt:
    type: Date

  profile:
    type: Schemas.UserProfile
    optional: true

  services:
    type: Object,
    optional: true,
    blackbox: true

  fullName:
    type: String
    optional: true

  picture:
    type: String
    optional:true
    label: 'Profile picture'

  humanapi:
    type: Object
    optional: true
    blackbox: true
)

Meteor.users.attachSchema Schemas.User

# Permissions
# Meteor.users.allow({
#   update: (userId, doc, fields, modifier) ->
#     # can only change yourself
#     doc._id is userId
#   ,
#   fetch: ['_id']
# })


# Posts.deny({
#   update: function (userId, docs, fields, modifier) {
#     // can't change owners
#     return _.contains(fields, 'owner');
#   },
#   remove: function (userId, doc) {
#     // can't remove locked documents
#     return doc.locked;
#   },
#   fetch: ['locked'] // no need to fetch 'owner'
# });
