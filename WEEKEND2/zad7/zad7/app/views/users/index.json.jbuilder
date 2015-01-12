json.array!(@users) do |user|
  json.extract! user, :id, :username, :status, :confirmed
  json.url user_url(user, format: :json)
end
