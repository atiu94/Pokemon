class CreatureLocation < ActiveRecord::Base
	has_many :creatures
end
