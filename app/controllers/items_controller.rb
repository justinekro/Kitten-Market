class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  private
    def items_params
      params.permit(:title, :description, :price)
    end
end
