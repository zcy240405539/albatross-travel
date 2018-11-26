class UsersController < ApplicationController
	before_action :set_user

	def id_user
		@id = user.id
	end

	def show
		@posts = @user.posts
	end

	private
	def set_user
		@user=User.find(params[:id])
	end
end