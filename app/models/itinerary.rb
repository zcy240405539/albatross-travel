class Itinerary < ApplicationRecord
	belongs_to :user
	has_many :dailies, dependent: :destroy
end
