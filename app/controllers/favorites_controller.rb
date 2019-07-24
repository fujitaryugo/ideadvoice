class FavoritesController < ApplicationController
	before_action :set_idea
	def create
		@idea = Idea.find(params[:idea_id])
		@favorite = current_user.favorites.new(idea_id: @idea.id)
		@favorite.save
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		@favorite = current_user.favorites.find_by(idea_id: @idea.id)
		@favorite.destroy
	end

	private
	def set_idea
		@idea = Idea.find(params[:idea_id])
		@order = Order.find(params[:order_id])
	end
end
