class AddPnameToOrder < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :pname, :string
  end

  def down
  	remove_column :orderdetails, :pname
  end
end
