class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@idea = Idea.find(params[:idea_id])
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.idea_id = @idea.id
		@comment.save
		redirect_to order_idea_path(@idea.order_id,@idea)
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to order_idea_path(@idea.order_id,@idea)
	end

	private
	def comment_params
		params.require(:comment).permit(:comment_text, :user_id, :idea_id)
	end
end
