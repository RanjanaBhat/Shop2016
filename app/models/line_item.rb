class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :orderdetail
	#def subtotal
  		#quantity * price
	#end
end
