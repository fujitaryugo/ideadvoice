class Admins::CommentsController < ApplicationController
	before_action :authenticate_admin!
  def destroy
	@idea = Idea.find(params[:idea_id])
	@comment = Comment.find(params[:id])
	@comment.destroy
	redirect_to admins_order_idea_path(@idea.order_id,@idea)
  end
end
