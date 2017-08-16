class CommentsController < ApplicationController
	def new
	@comment = Comment.new
	@post = Post.find(params[:id])
		
	end
end
