class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  	@similar_items = Item.select {|item| item.id != @item.id}.slice(0, 3)
  end

  private
    def items_params
      params.permit(:title, :description, :price, :quantity)
    end
end
