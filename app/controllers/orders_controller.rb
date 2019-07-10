class OrdersController < ApplicationController
	def create
		@order = Order.new(order_params)
		@order.client_id = current_client.id
		@order.save
		redirect_to client_path(@client.id)
	end

	def show
	end

	def index
	end

	private
	def order_params
		params.require(:order).permit(:order_title, :order_text, :order_image, :deadline, :reward_image, :reward_content, :client_id)
	end
end
