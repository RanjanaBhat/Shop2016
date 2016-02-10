class RemoveInvoiceFromOrder < ActiveRecord::Migration
  def self.up
    remove_attachment :orderdetails, :invoice
  end
end
