class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    food_cart = current_user.food_cart
    @conversations = food_cart.conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = @conversation.messages.new
    respond_to do |format|
      format.js
      format.html
    end
  end

end
