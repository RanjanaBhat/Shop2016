class Orderdetail < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer
	has_one :address_detail
	has_many :products
	accepts_nested_attributes_for :products
	do_not_validate_attachment_file_type :invoice
	 has_attached_file :invoice
	 has_permalink :carrier
	 def to_param
  	permalink
  end
end
