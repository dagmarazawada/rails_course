json.array!(@shops) do |shop|
  json.extract! shop, :id, :address, :name, :number_of_employees
  json.url shop_url(shop, format: :json)
end
