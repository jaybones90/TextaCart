class ConversationsChannel < ApplicationCable::Channel
  def subscribed()
    stop_all_streams
    stream_from "conversation_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end


end
