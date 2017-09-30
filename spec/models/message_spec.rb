require 'rails_helper'

describe Message do
  it { should belong_to :conversation }

  describe 'client' do
    it 'creates a new instance of client with correct env variables' do
      test_message = Message.new()
      expect(test_message.client.account_sid).to eq(ENV['TWILIO_SID'])
      expect(test_message.client.auth_token).to eq(ENV['TWILIO_AUTH_TOKEN'])
    end
  end


end
