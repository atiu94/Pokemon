json.array!(@user_creatures) do |user_creature|
  json.extract! user_creature, :id, :user_id, :creature_id, :nickname
  json.url user_creature_url(user_creature, format: :json)
end
