class OrdersController < ApplicationController
	def index
		@orders = Order.all.reverse_order

		@orders_now = Order.where("deadline: > Date.today ")
	end

	def show
		@order = Order.find(params[:id])
  	    @idea = Idea.new
  	    @ideas = @order.ideas.reverse_order
  	    @user = current_user
  	    @awards = Award.where(idea: @ideas).reverse_order
	end

	private
	def order_params
		params.require(:order).permit(:order_title, :order_text, :order_image, :deadline, :reward_image, :reward_content, :client_id)
	end
end
