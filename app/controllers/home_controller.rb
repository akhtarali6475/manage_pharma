class HomeController < ApplicationController

	def index
		@users = User.all.order(:created_at)
		@levels = (@users.count / 50) - 1
		@products = Product.all
	end
end
