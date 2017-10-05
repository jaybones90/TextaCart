$(document).ready ->
  $(".conversation-link").on "click", ->
    conversationId = $(this).attr('data-conversation-id')
    App.conversation = App.cable.subscriptions.create({ channel: "ConversationChannel", conversation_id: conversationId},
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        $('#messages').append data['message']
        messagesContainer = $('.messages-container')
        messagesContainer.scrollTop(messagesContainer.prop("scrollHeight"))

        # Called when there's incoming data on the websocket for this channel

)
