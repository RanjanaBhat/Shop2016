class Orderdetail < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer
	has_many :products
	do_not_validate_attachment_file_type :invoice
	 has_attached_file :invoice
	 has_permalink :carrier
	 def to_param
  	permalink
  end
end
