class Clients::OrdersController < ApplicationController
	before_action :authenticate_client!
	def create
		@order = Order.new(order_params)
		@order.client_id = current_client.id
		@order.save
		redirect_to clients_client_path(params[:client_id])
	end

	def show
		@order = Order.find(params[:id])
		@ideas = @order.ideas
	end

	def index
	end

	private
	def order_params
		params.require(:order).permit(:order_title, :order_text, :order_image, :deadline, :reward_image, :reward_content, :client_id)
	end
end
