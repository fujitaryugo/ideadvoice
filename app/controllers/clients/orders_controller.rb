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
		@ideas = @order.ideas.reverse_order
		@awards = Award.where(idea: @ideas).reverse_order
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		redirect_to clients_order_path(@order)
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to clients_client_path(current_client.id)
	end

	def index
	end

	private
	def order_params
		params.require(:order).permit(:order_title, :order_text, :order_image, :deadline, :reward_image, :reward_content, :client_id)
	end
end
