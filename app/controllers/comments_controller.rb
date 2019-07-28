class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@idea = Idea.find(params[:idea_id])
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.idea_id = @idea.id
		if @comment.save
		flash[:notice] = "投稿しました！"
		redirect_to order_idea_path(@idea.order_id,@idea)
		else
		flash[:alert] = "投稿に失敗しました！正しく入力してください"
		redirect_to order_idea_path(@idea.order_id,@idea)
		end
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
