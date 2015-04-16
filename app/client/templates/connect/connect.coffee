# Connect: Event Handlers and Helpers
Template.Connect.events
  'click #connect-health-data-btn': (e, tmpl) ->
    console.log Meteor.userId()
    # Determine new or existing humanapi user
    currentUser = Meteor.user()
    if currentUser.humanapi?.publicToken
      options =
        clientUserId: Meteor.userId()
        publicToken: currentUser.humanapi.publicToken
        close: -> console.log "dialog closed"
        error: -> console.log "error occured during popup"
    else
      options =
        clientUserId: Meteor.userId()
        clientId: AppConfig.public.humanapi.client_id
        finish: (err, sessionTokenObject) ->
          console.log err, sessionTokenObject
          # callback that would be called after user finishes connecting her health data
          # you need to post `sessionTokenObject` to your server
          # append `clientSecret` to it and send it to our server.

          # sending POST request with jQuery might look like this.
          # NOTE: it's not necessary to use jQuery
          HTTP.post("/connect/finish", params: sessionTokenObject, (res) ->
            console.log "for /connect/finish"
            console.log res
          )
          return

    HumanConnect.open options

Template.Connect.helpers
# Example:
#   items: ->
#

# Connect: Lifecycle Hooks
Template.Connect.created = ->

Template.Connect.rendered = ->

Template.Connect.destroyed = ->
