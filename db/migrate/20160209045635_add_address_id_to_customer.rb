class AddAddressIdToCustomer < ActiveRecord::Migration
  def up
  	add_column :customers, :address_detail_id, :integer
  	add_index :customers, :address_detail_id
  end

  def down
  	remove_column :customers, :address_detail_id
  end
end
