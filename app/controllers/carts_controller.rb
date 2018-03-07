class CartsController < ApplicationController

  def show
    current_user.cart
    @total = 0
    current_user.cart.items.each do |item|
      @total += item.price
    end 
  end

  def add_to_cart
    if user_signed_in?
      if current_user.cart
        current_user.cart.items << Item.find(params[:id])
      else
        Cart.create(user: current_user)
        current_user.cart.items << Item.find(params[:id])
      end
      redirect_to cart_path(current_user.cart)
    else 
      flash[:error] = "Merci de vous authentifier pour accéder à votre panier"
      redirect_to new_user_session_path
    end
  end

  def remove_from_cart
    item = Item.find(params[:id])
    current_user.cart.items -= [item]
    redirect_to cart_path(current_user.cart)
  end

end
