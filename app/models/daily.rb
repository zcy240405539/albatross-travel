class Daily < ApplicationRecord
	belongs_to :itinerary
	belongs_to :user
	belongs_to :attraction
	belongs_to :city
	belongs_to :region
end
