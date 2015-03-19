class @ConnectFinishController extends RouteController
  onRun: ->
    console.log "Connect Finish View"
    @next()

  action: ->
    # grab client secret from app settings page and `sign` `sessionTokenObject`
    # with it.
    params = @request.body
    params.clientSecret = AppConfig.humanapi.client_secret
    console.log "params", params
    HTTP.post(
      'https://user.humanapi.co/v1/connect/tokens', {params: params},
      (err, resp) =>
        if err
          @response.writeHead(500)
          @response.end(JSON.stringify(err))
          return
        # At this point if request was successfull body object
        # will have `accessToken`, `publicToken` and `humanId` associated in it
        # You probably want to store these fields in your system in association
        # to user's data.

        data = resp.data
        console.log "data", data
        Meteor.users.update(data.clientUserId, $set: {"humanapi": data})
        @response.writeHead(201)
        @response.end(JSON.stringify(resp.data))
    )
