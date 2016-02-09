class AddCustomerIdToAddress < ActiveRecord::Migration
  def up
  	add_column :address_details, :customer_id, :integer
  	add_index :address_details, :customer_id
  end

  def down
  	remove_column :address_details, :customer_id
  end
end
