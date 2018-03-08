class Item < ApplicationRecord
		has_many :products
	  #validates :title, :description, :price, :image_url, presence: true
    

		# This method associates the attribute "item_image" with a file attachment
	  has_attached_file :item_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '600x600>',
    #:storage => :s3,
		#:s3_host_name => 's3-eu-west-1.amazonaws.com',
  }

# Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :item_image, :content_type => /\Aimage\/.*\Z/
end
