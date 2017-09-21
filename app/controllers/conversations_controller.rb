class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    food_cart = current_user.food_cart
    @conversations = food_cart.conversations
  end

end
