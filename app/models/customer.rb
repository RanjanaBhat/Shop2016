class Customer < ActiveRecord::Base
	has_many :address_details
	accepts_nested_attributes_for :address_details
end
