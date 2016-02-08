class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :addr1
      t.text :addr2
      t.text :addr3
      t.text :addr4
      t.string :city
      t.string :state
      t.string :country
      t.integer :postcode
      t.integer :contactno
      t.string :email

      t.timestamps null: false
    end
  end
end
