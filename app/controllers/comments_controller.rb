class CommentsController < ApplicationController
	def create
		@post = Post.find(post_params[:post_id])
		@comment = @post.comment.build(params[:comment])
		@comment.save
		redirect_to @post
    end

   	def destroy
		
    end
end
