class AddImgToOrder < ActiveRecord::Migration
  def self.up
    change_table :orderdetails do |t|
      t.attachment :invoice
    end
  end

  def self.down
    remove_attachment :orderdetails, :invoice
  end
end
