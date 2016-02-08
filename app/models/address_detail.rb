class AddressDetail < ActiveRecord::Base
	#attr_accessible :line1, :line2, :city, :postcode, :country
	belongs_to :user
	validates_presence_of :line1, :line2, :city, :postcode, :country
end
