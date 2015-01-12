json.array!(@advertisments) do |advertisment|
  json.extract! advertisment, :id, :description, :title
  json.url advertisment_url(advertisment, format: :json)
end
