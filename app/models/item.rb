class Item < ApplicationRecord
		has_and_belongs_to_many :carts
		has_and_belongs_to_many :orders
	  #validates :title, :description, :price, :image_url, presence: true

		# This method associates the attribute "item_image" with a file attachment
	  has_attached_file :item_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '600x600>'
  }

# Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :item_image, :content_type => /\Aimage\/.*\Z/
end
