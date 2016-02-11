class AddBirthdayToCustomer < ActiveRecord::Migration
  def up
  	add_column :customers, :bdate, :date
  end

  def down
  	remove_column :customers, :bdate
  end
end
