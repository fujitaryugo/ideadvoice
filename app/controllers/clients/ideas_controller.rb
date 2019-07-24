class Clients::IdeasController < ApplicationController
	def show
		@order = Order.find(params[:order_id])
		@idea = Idea.find(params[:id])
		@comments = @idea.comments.reverse_order
		@present = Present.new
	end

	private
	def idea_params
		params.require(:idea).permit(:idea_title, :idea_text, :user_id, :order_id, :send_status)
	end
end
