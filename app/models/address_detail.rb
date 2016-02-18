class AddressDetail < ActiveRecord::Base
	#attr_accessible :line1, :line2, :city, :postcode, :country
	#attr_accessible :customer_id
	belongs_to :user
	belongs_to :customer
	belongs_to :orderdetail
	validates_presence_of :line1, :line2, :city, :postcode, :country
	
end
