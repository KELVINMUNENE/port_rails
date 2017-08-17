class CommentsController < ApplicationController
	before_action :get_user, only: [:create,:new]
	def new
	@comment = Comment.new
	end
	
	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "comment saved successfully"
			redirect_to post_path(params[:post_id])
		else
			flash[:notice] = "comment not saved"
			redirect_to post_path(params[:post_id])
		end
		
	end
	private
	def comment_params
		user = {user_id:@user.id}
		post = {post_id:params[:post_id]}
		params.require(:comment).permit(:description, :post_id).merge(user).merge(post)

	end
	def get_user
		@user = current_user
		@post = Post.find(params[:post_id])
	end
end
