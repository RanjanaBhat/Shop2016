class Customer < ActiveRecord::Base
	has_many :address_details
	has_many :orderdetails
	accepts_nested_attributes_for :address_details
	accepts_nested_attributes_for  :orderdetails
	has_permalink :name
	def to_param
  	permalink
  end
end
