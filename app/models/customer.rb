class Customer < ActiveRecord::Base
	has_many :address_details, :dependent => :destroy
	has_many :orderdetails, :dependent => :destroy
	accepts_nested_attributes_for :address_details, :reject_if => :all_blank, :allow_destroy => true
	has_permalink :name
	def to_param
  		permalink
  	end
  	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@akamai\.com\z/i
  	validates_uniqueness_of :email
end
