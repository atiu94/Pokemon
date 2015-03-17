json.array!(@user_creature_moves) do |user_creature_move|
  json.extract! user_creature_move, :id, :user_creature_id, :move_id, :pp
  json.url user_creature_move_url(user_creature_move, format: :json)
end
