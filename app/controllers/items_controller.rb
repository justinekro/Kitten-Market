class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(items_params)
  		if @item.save
  			redirect_to @item, notice: 'Votre produit a bien été ajouté'
  		else
  			render 'new'
  		end
  end

  def show
  	@item = Item.find(params[:id])
  	@similar_items = Item.select {|item| item.id != @item.id}.slice(0, 3)
  end

  private
    def items_params

      params.permit(:title, :description, :price, :item_image, :quantity)
      
    end
end
