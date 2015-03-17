json.array!(@creature_locations) do |creature_location|
  json.extract! creature_location, :id, :location_id, :creature_id
  json.url creature_location_url(creature_location, format: :json)
end
