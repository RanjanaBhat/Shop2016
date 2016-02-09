class AddColumToOrder < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :delivery_slot, :string
  	add_index :orderdetails, :delivery_slot
  end

  def down
  	remove_column :orderdetails, :delivery_slot
  end
end
