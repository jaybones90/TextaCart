class FoodCartsController < ApplicationController

  def index
    @food_carts = FoodCart.all
  end

end
