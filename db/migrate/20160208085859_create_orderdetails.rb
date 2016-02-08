class CreateOrderdetails < ActiveRecord::Migration
  def change
    create_table :orderdetails do |t|
      t.integer :order_no
      t.boolean :is_express_delivery
      t.boolean :is_customer_pickup
      t.datetime :delivery_date
      t.datetime :delivery_slot
      t.string :carrier
      t.string :order_currency
      t.integer :order_value
      t.string :payment_collection
      t.text :special_instruction

      t.timestamps null: false
    end
  end
end
