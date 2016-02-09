class RemoveColFromOrder < ActiveRecord::Migration
  def up
  	remove_column :orderdetails, :delivery_slot
  end

  def down
  	add_column :orderdetails, :delivery_slot, :datetime
  end
end
