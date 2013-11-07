json.array!(@countries) do |country|
  json.extract! country, :name, :description
  json.url country_url(country, format: :json)
end
