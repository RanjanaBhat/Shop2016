class AdPnameToLineitem < ActiveRecord::Migration
  def up
  	add_column :line_items, :name, :string
  end

  def down
  	remove_column :line_items, :name
  end
end
