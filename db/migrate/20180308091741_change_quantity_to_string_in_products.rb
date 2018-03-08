class ChangeQuantityToStringInProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :quantity, 'integer USING CAST("quantity" AS integer)'
  end
end
