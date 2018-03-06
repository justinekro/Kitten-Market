class OrdersController < ApplicationController

	def order_button
		@order = Order.new
		@order.items << current_user.cart.items
		empty_cart
	end

	def empty_cart
		current_user.cart = []
	end

	def payement
		
	end

	def send_emails
		
	end

end
