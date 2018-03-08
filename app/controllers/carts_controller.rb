class CartsController < ApplicationController
  def show
  	@order_items = current_order.order_items
  	@user = User.new
  end
end
