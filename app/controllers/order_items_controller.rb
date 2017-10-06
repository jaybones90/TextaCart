class OrderItemsController < ApplicationController

  def new
    @order = Order.find(params[:id])
    @order_item = @order.order_items.new()
  end
end
