class AddressDetail < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer
	belongs_to :orderdetail
	validates_presence_of  :postcode, :country
	#added extra code
	
	validates_presence_of :line1, :line2, :city
	
	#can be removed.
	
end
