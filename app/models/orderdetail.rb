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
  	#def customer_attributes=(attrs)
    	#self.customer = Customer.where(attrs).first_or_initialize(attrs) 
    	#@show_exists_message = !@customer.new_record?
  	#end
  	#def subtotals
  		#items.map do 
  			#|i| i.subtotal 
  		#end
	#end
	#def total
  		#subtotals.sum
	#end
  	
  	#def email
  	#	Orderdetail.try(:email)
  	#end
  	#delegate :name, to: :product, prefix: true
end
