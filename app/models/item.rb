class Item < ApplicationRecord
		has_and_belongs_to_many :carts
		has_and_belongs_to_many :orders
	  #validates :title, :description, :price, :image_url, presence: true
end
