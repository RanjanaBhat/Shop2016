json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :addr1, :addr2, :addr3, :addr4, :city, :state, :country, :postcode, :contactno, :email
  json.url customer_url(customer, format: :json)
end
