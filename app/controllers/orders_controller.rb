class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end
	

	def create_order
		#on crée une commande dès que le paiement est validé
		order = Order.create(user: current_user)

		current_user.cart.products.each do |product|
			new_product = Product.create(item_id: product.item.id, quantity: product.quantity)
			order.products << new_product
			order.save
		end
		order


		#on vide le panier dès que le paiement est validé
		current_user.cart.products = []
    Item.all.each do |item|
      product = Product.create(item_id:item.id, quantity: 0)
      current_user.cart.products << product
      current_user.cart.save
    end
	end

	def pay_cart
    @total = 0
    current_user.cart.products.each do |product|
      @total += product.item.price * product.quantity
    end

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

		create_order
		ConfirmationMailer.sample_email(current_user.email).deliver!
		redirect_to user_profile_path(current_user.id)

		#user_profile_path(current_user.id)



		flash[:success] = "Votre commande a bien été effectuée."

    rescue Stripe::CardError => e
      flash[:error] = e.message

	end



	def send_emails

	end

end
