json.array!(@battles) do |battle|
  json.extract! battle, :id, :creature_location_id, :user_creature_id, :user_creature_current_health_point, :creature_current_health_point
  json.url battle_url(battle, format: :json)
end
