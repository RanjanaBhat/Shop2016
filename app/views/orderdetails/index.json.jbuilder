json.array!(@orderdetails) do |orderdetail|
  json.extract! orderdetail, :id, :order_no, :is_express_delivery, :is_customer_pickup, :delivery_date, :delivery_slot, :carrier, :order_currency, :order_value, :payment_collection, :special_instruction
  json.url orderdetail_url(orderdetail, format: :json)
end
