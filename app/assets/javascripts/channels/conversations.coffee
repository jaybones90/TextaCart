$(document).ready ->
  App.conversations = App.cable.subscriptions.create({ channel: "ConversationsChannel"},
    received: (data) ->
      conversationsContainer = $('.conversations')
      newConversation = data['conversation']
      conversationsContainer.append newConversation
      conversationsContainer.scrollTop(conversationsContainer.prop("scrollHeight"))
      $('.conversations div:last').addClass('blink_me')
  )
