class BroadcastConversationJob < ApplicationJob
  queue_as :default

  def perform(conversation)
    ActionCable.server.broadcast "conversation_channel", conversation: render_conversation(conversation)
  end

  private
  def render_conversation(conversation)
    ApplicationController.renderer.render(partial: 'conversations/conversation', locals: { conversation: conversation })
  end
end
