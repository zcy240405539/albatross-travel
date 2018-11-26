class City < ApplicationRecord
	has_many :attractions
	has_many :posts
	belongs_to :region
end
