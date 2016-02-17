class AddEmailToOrders < ActiveRecord::Migration
  def up
  	add_column :orderdetails, :email, :string
  end

  def down
  	remove_column :orderdetails, :email
  end
end
