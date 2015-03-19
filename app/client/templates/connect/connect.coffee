# Connect: Event Handlers and Helpers
Template.Connect.events
  'click #connect-health-data-btn': (e, tmpl) ->
    console.log Meteor.userId()
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
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.Connect.helpers
# Example:
#   items: ->
#

# Connect: Lifecycle Hooks
Template.Connect.created = ->

Template.Connect.rendered = ->

Template.Connect.destroyed = ->
