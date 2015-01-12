json.array!(@products) do |product|
  json.extract! product, :id, :ean, :name, :description, :active, :published
  json.url product_url(product, format: :json)
end
