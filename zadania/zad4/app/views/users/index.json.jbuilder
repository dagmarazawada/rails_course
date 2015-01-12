json.array!(@users) do |user|
  json.extract! user, :id, :username, :active
  json.url user_url(user, format: :json)
end
