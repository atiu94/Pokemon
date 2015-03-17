json.array!(@locations) do |location|
  json.extract! location, :id, :name, :x_coordinate, :y_coordinate
  json.url location_url(location, format: :json)
end
