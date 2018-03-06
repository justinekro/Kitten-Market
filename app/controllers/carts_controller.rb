class CartsController < ApplicationController

  def show
  end

  def add_to_cart
    if current_user.cart
      current_user.cart.items << Item.find(params[:id])
    else
      Cart.create(user: current_user)
    end
    redirect_to cart_path(current_user.cart)
  end

  private
    def carts_params
      params.permit(:user, :items)
    end
end
