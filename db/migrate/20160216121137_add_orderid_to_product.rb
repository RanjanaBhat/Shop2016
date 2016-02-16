class AddOrderidToProduct < ActiveRecord::Migration
  def up
  	add_column :products, :orderdetail_id, :integer
  	add_index :products, :orderdetail_id
  end

  def down
  	remove_column :products, :orderdetail_id
  end
end
