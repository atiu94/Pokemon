class Creature < ActiveRecord::Base
	TYPES = ["Fire", "Water", "Grass"]
	has_many :user_creatures
end
