class HomeController < ApplicationController
	# skip authorization
	# skip_before_action :authentication_user!, :only => [:index]
	# before_action :force_json, only: :search
	def home
	end

	def search
		@regions = Region.ransack(name_cont: params[:q]).result(distinct: true)
		@cities = City.ransack(name_cont: params[:q]).result(distinct: true)
		@attractions = Attraction.ransack(name_cont: params[:q]).result(distinct: true)		
		@posts = Post.ransack(title_cont: params[:q]).result(distinct: true)
		@itineraries = Itinerary.ransack(name_cont: params[:q]).result(distinct: true)
		@users = User.ransack(name_cont: params[:q]).result(distinct: true)

		respond_to do |format|
			format.html {}
			format.json {
				@regions = @regions.limit(3)
				@cities = @cities.limit(3)
				@attractions = @attractions.limit(3)
				@posts = @posts.limit(3)
				@itineraries = @itineraries.limit(3)
				@users = @users.limit(3)
			}
		end
	end

	def searchPost
		@posts = Post.ransack(title_cont: params[:q]).result(distinct: true)

		respond_to do |format|
			format.html {}
			format.json {
				@posts = @posts.limit(5)
			}
		end
	end

	#private

	#def force_json
	#	request.format = :json
	#end	
end
