class AdPidToLineitems < ActiveRecord::Migration
   def up
  	add_column :line_items, :product_id, :integer
  	add_index :line_items, :product_id
  end

  def down
  	remove_column :line_items, :product_id
  end
end
