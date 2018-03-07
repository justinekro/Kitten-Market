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

	def pay_cart
    @total = 0
    current_user.cart.items.each do |item|
      @total += item.price
    end
    #Montant en centimes !
    @amount = @total

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer     => customer.id,
        :amount       => @amount.to_i,
        :description  => 'Paiement du client #{@user.email}',
        :currency     => "eur",
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
			create
			empty_cart
      redirect_to user_profile_path(current_user.id)
			flash[:success] = "Votre commande a bien été effectuée."

	end

	def send_emails

	end

end
