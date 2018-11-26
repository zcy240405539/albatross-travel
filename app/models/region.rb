class Region < ApplicationRecord
	has_many :cities
	has_many :attractions
	has_many :posts
end
