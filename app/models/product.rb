class Product < ActiveRecord::Base
	#validates if there is anything filled in
	validates :title, :description, :image_url, :presence => true
	#validates if the value is higher then 0.01
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	#validates if the name is unique
	validates :title, :uniqueness => true
	#validates if the format is gif jpg or png
	validates :image_url, :format => {
  		with: %r{\.(gif|jpg|png)\z}i,
		:message => 'must be a URL for GIF, JPG or PNG image'
	}
end
