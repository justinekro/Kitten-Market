class DropJoinTableCartsItems < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :carts, :items do |t|
      # t.index [:cart_id, :item_id]
      # t.index [:item_id, :cart_id]
    end
  end
end
