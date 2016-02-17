class RemoveFieldsFromCustomer < ActiveRecord::Migration
  change_table :customers do |t|
  	t.remove :addr1
  	t.remove :addr2
  	t.remove :addr3
  	t.remove :addr4
  	t.remove :city
  	t.remove :state
  	t.remove :country
  	t.remove :postcode
	end
end
