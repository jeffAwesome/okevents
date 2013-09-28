json.array!(@events) do |event|
  json.extract! event, :title, :location, :date, :description, :website
  json.url event_url(event, format: :json)
end
