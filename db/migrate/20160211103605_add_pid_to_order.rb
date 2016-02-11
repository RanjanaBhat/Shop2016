class AddPidToOrder < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :product_id, :integer
  	add_index :orderdetails, :product_id
  end

  def down
  	remove_column :orderdetails, :product_id
  end
end
