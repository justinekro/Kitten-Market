class Item < ApplicationRecord
		has_many :users
	  validates :title, :description, :price, :image_url, presence: true
end
