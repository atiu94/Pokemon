class UserCreature < ActiveRecord::Base
	belongs_to :user
	belongs_to :creature
	has_many :moves

	def to_s
		self.nickname
	end
end
