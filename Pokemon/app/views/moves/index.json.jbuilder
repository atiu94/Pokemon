json.array!(@moves) do |move|
  json.extract! move, :id, :name, :pp, :element
  json.url move_url(move, format: :json)
end
