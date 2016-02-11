class DelPidFromOrder < ActiveRecord::Migration
  def up
  	remove_column :orderdetails, :product_id
  end

  
end
