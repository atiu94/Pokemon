class UserCreatureMove < ActiveRecord::Base
	belongs_to :move
	belongs_to :user_creature
end
