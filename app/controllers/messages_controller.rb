class MessagesController < ApplicationController
  require 'twilio-ruby'
  skip_before_action :verify_authenticity_token

  def receive
    customer = Customer.find_or_create_by(phone_number: params['From'])
    food_cart = FoodCart.find_by(phone_number: params["To"])
    conversation = food_cart.conversations.find_or_create_by(customer_id: customer.id)
    conversation.messages.create!(from_number: customer.phone_number, to_number: food_cart.phone_number, content: params["Body"])
  end


  def create
    conversation = Conversation.find(params[:conversation_id])
    message = conversation.messages.create!(message_params)
    message.send_message
    respond_to do |format|
      format.js 
    end
  end

private
  def message_params
    params.require(:message).permit(:to_number, :from_number, :content)
  end

end
