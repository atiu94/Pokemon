class Battle < ActiveRecord::Base
	belongs_to :creature_location
	belongs_to :user_creature
end
