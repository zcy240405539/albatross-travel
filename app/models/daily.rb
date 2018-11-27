class Daily < ApplicationRecord
	belongs_to :itinerary
	belongs_to :user
	#belongs_to :attraction
	#belongs_to :city
	#belongs_to :region
	#belongs_to :post

	#def post_title
	#	post.try(:title)
	#end

	#def post_title=(title)
	#	self.post = Post.find_by_title(title) if title.present?
	#end	

end
