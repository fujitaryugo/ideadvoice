class IdeasController < ApplicationController
	before_action :authenticate_user!
	def create
		@order = Order.find(params[:order_id])
		@idea = Idea.new(idea_params)
		@idea.user_id = current_user.id
		@idea.order_id = @order.id
		if @idea.save
		flash[:notice] = "投稿しました！"
		redirect_to order_path(@order)
		else
		flash[:alert] = "投稿に失敗しました！正しく入力してください"
		redirect_to order_path(@order)
		end
	end

	def show
		@order = Order.find(params[:order_id])
		@idea = Idea.find(params[:id])
		@user = current_user.id
		@comment = Comment.new
		@comments = @idea.comments.reverse_order
		@user = current_user
	end

	def update
		@idea = Idea.find(params[:id])
		@idea.update(idea_params)
		redirect_to order_idea_path(@idea.order_id,@idea)
	end

	def destroy
		@idea = Idea.find(params[:id])
		@idea.destroy
		redirect_to user_path(current_user.id)
	end

	private
	def idea_params
		params.require(:idea).permit(:idea_title, :idea_text, :user_id, :order_id, :send_status)
	end
end
