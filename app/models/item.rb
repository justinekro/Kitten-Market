class Item < ApplicationRecord
		has_many :products
	  validates :title, :description, :price, presence: true
    

		# This method associates the attribute "item_image" with a file attachment
	  has_attached_file :item_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '223x129>',
  }

# Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :item_image, :content_type => /\Aimage\/.*\Z/
end
