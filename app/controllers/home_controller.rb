class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to :controller=>'dashboard', :action => 'index'
		end
		@customers=Customer.all
		@products=Product.all
		@orderdetails=Orderdetail.all
	end
	def order_detail
	end
	def order
	end
	def customer
	end
	def product
	end
end
