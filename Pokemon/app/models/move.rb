class Move < ActiveRecord::Base
	TYPES = ["Fire", "Water", "Grass", "Normal", "Fighting", "Flying", "Poison", "Ground", "Rock", "Bug", "Ghost", "Steel", "Electric", "Psychic", "Ice", "Dragon", "Dark", "Fairy" ]
	def to_s
		self.name
	end
end
