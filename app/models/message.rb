class Message < ApplicationRecord
  after_create_commit { BroadcastMessageJob.perform_later self}
  require 'twilio-ruby'
  belongs_to :conversation


  def client
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_message
    client.messages.create(
    from: self.from_number,
    to: self.to_number,
    body: self.content
    )
  end

end
