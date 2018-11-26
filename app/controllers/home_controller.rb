class HomeController < ApplicationController
	# skip authorization
	# skip_before_action :authentication_user!, :only => [:index]
	# before_action :force_json, only: :search
	def home
	end

	def search
		@posts = Post.ransack(title_cont: params[:q]).result(distinct: true)
		@itineraries = Itinerary.ransack(name_cont: params[:q]).result(distinct: true)
		@attractions = Attraction.ransack(name_cont: params[:q]).result(distinct: true)
		@cities = City.ransack(name_cont: params[:q]).result(distinct: true)
		@regions = Region.ransack(name_cont: params[:q]).result(distinct: true)
		#render json: {posts: []}

		respond_to do |format|
			format.html {}
			format.json {
				@posts = @posts.limit(20)
				@itineraries = @itineraries.limit(20)
				@attractions = @attractions.limit(20)
				@cities = @cities.limit(20)
				@regions = @regions.limit(20)
			}
		end
	end

	#private

	#def force_json
	#	request.format = :json
	#end	
end
