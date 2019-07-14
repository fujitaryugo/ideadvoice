class OrdersController < ApplicationController
	before_action :authenticate_user!
	def index
	end

	def show
		@order = Order.find(params[:id])
  	    @idea = Idea.new
  	    @ideas = @order.ideas
  	    @user = @idea.user
	end

	private
	def order_params
		params.require(:order).permit(:order_title, :order_text, :order_image, :deadline, :reward_image, :reward_content, :client_id)
	end
end
