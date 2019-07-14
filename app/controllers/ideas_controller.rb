class IdeasController < ApplicationController
	before_action :authenticate_user!
	def create
		@order = Order.find(params[:order_id])
		@idea = Idea.new(idea_params)
		@idea.user_id = current_user.id
		@idea.order_id = @order.id
		@idea.save
		redirect_to order_path(@order)
	end

	private
	def idea_params
		params.require(:idea).permit(:idea_title, :idea_text, :user_id, :order_id)
	end
end
