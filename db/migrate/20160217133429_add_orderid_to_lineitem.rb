class AddOrderidToLineitem < ActiveRecord::Migration
  def up
  	add_column :line_items, :orderdetail_id, :integer
  	add_index :line_items, :orderdetail_id
  end

  def down
  	remove_column :line_items, :orderdetail_id
  end
end
