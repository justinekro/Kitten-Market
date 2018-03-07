class OrdersController < ApplicationController

	def create

		#if current.user.cart.nil?
			#flash[:error] = "Votre panier est vide"
			#redirect_to cart_path(current_user.cart)
		#else
			@order = Order.create(user: current_user)
			@order.items << current_user.cart.items

			#On redirige sur stripe

			#On appelle la méthode qui vide le panier
		#end
	end

	def empty_cart
		current_user.cart.items = []
	end

	def payement
		
	end

	def send_emails
		
	end

end
