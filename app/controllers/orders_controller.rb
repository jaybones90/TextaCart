class OrdersController < ApplicationController

  def new
    @customer = Customer.find(params[:customer_id])
    @order = @customer.orders.new
    @order_item = @order.order_items.new
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @order = @customer.orders.new
    @order_item = @order.order_items.new
    respond_to do |format|
      format.js
    end
  end




end
