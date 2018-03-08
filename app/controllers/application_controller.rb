class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
	    order = Order.find(session[:order_id])
	    if order.status != 'ongoing'
	    	Order.new
	    else
	    	order
	    end
	  else
	    Order.new
	  end
  end
end
