json.array!(@products) do |product|
  json.extract! product, :id, :SKU, :name, :quantity, :weight, :height, :width, :depth, :company, :cost_price, :retail_price
  json.url product_url(product, format: :json)
end
