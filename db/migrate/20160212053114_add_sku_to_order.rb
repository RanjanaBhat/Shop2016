class AddSkuToOrder < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :SKU, :string
  	#add_index :line_items, :product_id
  end

  def down
  	remove_column :orderdetails, :SKU
  end
end
