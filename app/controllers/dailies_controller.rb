class DailiesController < ApplicationController
	before_action :set_daily, only: [:show, :edit, :update, :destroy]

 def index
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end
  def show
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end
  def update
  end
  # POST /dailies
  # POST /dailies.json
  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @daily = @itinerary.dailies.create(params[:daily].permit(:daynumber, :dailydate, :region_id, :city_id, :attraction_id, :user_id, :content))
    redirect_to itinerary_path(@itinerary)
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end

  def new
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end

  def destroy
  	@itinerary = Itinerary.find(params[:itinerary_id])
  	@daily = @itinerary.dailies.find(params[:id])
	@daily.destroy
    redirect_to itinerary_path(@itinerary)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @cities = City.all
      @regions = Region.all
      @attractions = Attraction.all
      # @daily = @itinerary.dailies.find(params[:id])
    end

end
