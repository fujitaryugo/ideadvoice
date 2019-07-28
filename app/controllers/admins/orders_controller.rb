class Admins::OrdersController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@orders = Order.all.reverse_order
  end

  def show
  	@order = Order.find(params[:id])
  	@ideas = @order.ideas.all.reverse_order
  end

  def destroy
  	@order = Order.find(params[:id])
  	@order.destroy
  	redirect_to admins_orders_path
  end
end
