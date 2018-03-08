class ChargesController < ApplicationController

def new
end

def create
  #Montant en centimes !
  @amount = 500

  customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
      :customer     => customer.id,
      :amount       => @amount,
      :description  => 'Paiement du client #{@user.email}',
      :currency     => 'eur'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
