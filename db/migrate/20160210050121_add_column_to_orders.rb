class AddColumnToOrders < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :customer_id, :integer
  	add_index :orderdetails, :customer_id
  end

  def down
  	remove_column :orderdetails, :customer_id
  end
end
