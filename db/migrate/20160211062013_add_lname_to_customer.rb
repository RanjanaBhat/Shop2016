class AddLnameToCustomer < ActiveRecord::Migration
 def up
  	add_column :customers, :lname, :string
  	add_index :customers, :lname
  end

  def down
  	remove_column :customers, :lname
  end
end
