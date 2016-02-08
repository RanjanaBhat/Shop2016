class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :SKU
      t.string :name
      t.integer :quantity
      t.float :weight
      t.float :height
      t.float :width
      t.float :depth
      t.string :company
      t.float :cost_price
      t.float :retail_price

      t.timestamps null: false
    end
  end
end
