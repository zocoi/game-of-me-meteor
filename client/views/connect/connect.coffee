
# MasterLayout: Event Handlers and Helpers
Template.MasterLayout.events
  'click #connect-health-data-btn': (e, tmpl) ->
    console.log Meteor.user().emails[0].address
    options =
      clientUserId: Meteor.user().emails[0].address
      clientId: Meteor.settings.public.humanapi.client_id
      finish: (err, sessionTokenObject) ->
        console.log err, sessionTokenObject
        # callback that would be called after user finishes connecting her health data
        # you need to post `sessionTokenObject` to your server
        # append `clientSecret` to it and send it to our server.

        # sending POST request with jQuery might look like this.
        # NOTE: it's not necessary to use jQuery
        $.post "/connect/finish", sessionTokenObject, (res) ->
          console.log "for /connect/finish", res

        return

    HumanConnect.open options


Template.MasterLayout.helpers {}

# MasterLayout: Lifecycle Hooks

Template.MasterLayout.created = ->

Template.MasterLayout.rendered = ->

Template.MasterLayout.destroyed = ->
