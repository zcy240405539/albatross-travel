class Post < ApplicationRecord
	belongs_to :user
	belongs_to :attraction
	belongs_to :city
	belongs_to :region
	has_many :comments
end
