class Creature < ActiveRecord::Base
	TYPES = ["Fire", "Water", "Grass", "Normal", "Fighting", "Flying", "Poison", "Ground", "Rock", "Bug", "Ghost", "Steel", "Electric", "Psychic", "Ice", "Dragon", "Dark", "Fairy"]
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	has_many :user_creatures
	has_many :location

	def to_s
		self.name
	end
end
