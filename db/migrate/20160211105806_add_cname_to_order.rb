class AddCnameToOrder < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :name, :string
  end

  def down
  	remove_column :orderdetails, :name
  end
end
