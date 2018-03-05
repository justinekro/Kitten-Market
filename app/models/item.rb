class Item < ApplicationRecord
		has_and_belongs_to_many :users
	  validates :title, :description, :price, :image_url, presence: true
end
