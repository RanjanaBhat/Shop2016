class AddPermalinkToOrderdetail < ActiveRecord::Migration
  def self.up
    add_column :orderdetails, :permalink, :string
    add_index :orderdetails, :permalink
  end
  def self.down
    remove_column :orderdetails, :permalink
  end
end