class RemEmailFromOrder < ActiveRecord::Migration
  def up
  	remove_column :orderdetails, :email
  end
end
