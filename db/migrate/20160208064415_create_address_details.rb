class CreateAddressDetails < ActiveRecord::Migration
  def change
    create_table :address_details do |t|
      t.text :line1
      t.text :line2
      t.string :city
      t.string :state
      t.integer :postcode
      t.string :country

      t.timestamps null: false
    end
  end
end
