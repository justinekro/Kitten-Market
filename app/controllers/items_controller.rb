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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(items_params)
      redirect_to @item
    else 
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private
    def items_params

      params.permit(:title, :description, :price, :item_image)
      
    end
end
