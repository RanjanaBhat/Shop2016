class AdOrderidToAddress < ActiveRecord::Migration
  def up
  	add_column :address_details, :orderdetail_id, :integer
  	add_index :address_details, :orderdetail_id
  end

  def down
  	remove_column :address_details, :orderdetail_id
  end
end
