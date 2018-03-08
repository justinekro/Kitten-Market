class ChangeQuantityToStringInProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :quantity, :integer, "USING quantity::integer", default: 0
  end
end
