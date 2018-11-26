class Attraction < ApplicationRecord
	has_many :posts
	belongs_to :city
	belongs_to :region
end
