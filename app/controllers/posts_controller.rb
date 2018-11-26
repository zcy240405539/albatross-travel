class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy] 

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
    # @attraction = Attraction.find(params[:city_id])
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @cities = City.all
    @regions = Region.all
    @attractions = Attraction.all
    @post = Post.new(post_params)
    # @attraction = Attraction.find(params[:city_id])
    # @post = @attraction.posts.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }

    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @cities = City.all
      @regions = Region.all
      @attractions = Attraction.all
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:view, :title, :content, :user_id, :region_id, :city_id, :attraction_id)
    end
end
