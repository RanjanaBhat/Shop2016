class Customer < ActiveRecord::Base
	has_many :address_details, :dependent => :destroy
	has_many :orderdetails, :dependent => :destroy
	accepts_nested_attributes_for :address_details
	has_permalink :name
	def to_param
  	permalink
  end
end
