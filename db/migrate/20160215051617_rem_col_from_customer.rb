class RemColFromCustomer < ActiveRecord::Migration
  def up
  	remove_column :customers, :address_detail_id
  end
end
