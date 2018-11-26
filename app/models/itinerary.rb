class Itinerary < ApplicationRecord
	has_many :dailies, dependent: :destroy
end
