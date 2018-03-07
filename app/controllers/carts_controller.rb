class CartsController < ApplicationController

  def show
    @total = 0
    current_user.cart.items.each do |item|
      @total += item.price * item.quantity
    end 
  end

  def add_to_cart
    item = Item.find(params[:id])
    item.quantity +=1
    item.save
    if user_signed_in?
      if current_user.cart
        #current_user.cart.items << Item.find(params[:id])
          unless current_user.cart.items.include?(item)
            current_user.cart.items << item
          end
      else
        Cart.create(user: current_user)
        #current_user.cart.items << Item.find(params[:id])
        current_user.cart.items << item 
      end
      redirect_to cart_path(current_user.cart)
    else
      flash[:error] = "Merci de vous authentifier pour accéder à votre panier"
      redirect_to new_user_session_path
    end
  end

  def remove_from_cart
    item = Item.find(params[:id])
    if item.quantity <= 1
      current_user.cart.items.delete(item)
      item.quantity = 0
      item.save
    else 
      item.quantity -= 1
      item.save
    end
    redirect_to cart_path(current_user.cart)
  end


end
