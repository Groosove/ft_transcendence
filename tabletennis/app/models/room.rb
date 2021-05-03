class Room < ApplicationRecord
	has_many :messages
	has_many :user, through: :messages
end
