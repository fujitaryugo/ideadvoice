class Clients::IdeasController < ApplicationController
	def show
		@order = Order.find(params[:order_id])
		@idea = Idea.find(params[:id])
		@comments = @idea.comments
	end

	private
	def idea_params
		params.require(:idea).permit(:idea_title, :idea_text, :user_id, :order_id)
	end
end