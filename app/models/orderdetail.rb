class Orderdetail < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer
	has_many :line_items
	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :line_items
	has_one :address_detail
	has_many :products, :dependent => :destroy
	accepts_nested_attributes_for :products
	accepts_nested_attributes_for :address_detail
	do_not_validate_attachment_file_type :invoice
	has_attached_file :invoice
	has_permalink :carrier
	def to_param
  		permalink
  	end
  	
  	
  	#def email
  	#	Orderdetail.try(:email)
  	#end
  	#delegate :name, to: :product, prefix: true
end
