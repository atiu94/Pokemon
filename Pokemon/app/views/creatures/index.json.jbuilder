json.array!(@creatures) do |creature|
  json.extract! creature, :id, :name, :element, :description, :sprite
  json.url creature_url(creature, format: :json)
end
