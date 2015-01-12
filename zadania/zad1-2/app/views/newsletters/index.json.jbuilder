json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :content, :is_sent, :receipients
  json.url newsletter_url(newsletter, format: :json)
end
