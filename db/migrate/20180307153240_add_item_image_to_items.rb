class AddItemImageToItems < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :items, :item_image
  end
end

