class CartsController < ApplicationController

  def show
    @total = 0
    current_user.cart.products.each do |product|
      @total += product.item.price.to_i * product.quantity
    end 
  end

  def add_to_cart
    item = Item.find(params[:id])
    if user_signed_in?
      if !current_user.cart
        Cart.create(user: current_user)
        Item.all.each do |item|
          product = Product.create(item_id:item.id, quantity: 0)
          current_user.cart.products << product
          current_user.cart.save
        end
        a = current_user.cart.products.where(item_id:item.id).first
        a.quantity +=1
        a.save
      else
        a = current_user.cart.products.where(item_id:item.id).first
        a.quantity +=1
        a.save
      end
        redirect_to cart_path(current_user.cart)
    else
      flash[:error] = "Merci de vous authentifier pour accéder à votre panier"
      redirect_to new_user_session_path
    end
  end

  def remove_from_cart
    item = Item.find(params[:id])
    product = current_user.cart.products.where(item_id:item.id).first
    if product.quantity <= 1
      current_user.cart.products.delete(product)
      product.quantity = 0
      product.save
    else 
      product.quantity -= 1
      product.save
    end
    redirect_to cart_path(current_user.cart)
  end


end
