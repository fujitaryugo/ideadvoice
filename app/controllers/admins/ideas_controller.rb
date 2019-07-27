class Admins::IdeasController < ApplicationController
  def show
  	@order = Order.find(params[:order_id])
  	@idea = Idea.find(params[:id])
  	@comments = @idea.comments.all.reverse_order
  end

  def destroy
		@idea = Idea.find(params[:id])
		@idea.destroy
		redirect_to admins_order_path(params[:order_id])
  end
end
