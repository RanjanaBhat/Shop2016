json.array!(@address_details) do |address_detail|
  json.extract! address_detail, :id, :line1, :line2, :city, :state, :postcode, :country
  json.url address_detail_url(address_detail, format: :json)
end
