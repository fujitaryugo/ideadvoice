class FavoritesController < ApplicationController
	def create
		@idea = Idea.find(params[:idea_id])
		@favorite = current_user.favorites.new(idea_id: @idea.id)
		@favorite.save
		redirect_to order_idea_path(@idea.order_id,@idea)
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		@favorite = current_user.favorites.find_by(idea_id: @idea.id)
		@favorite.destroy
		redirect_to order_idea_path(@idea.order_id,@idea)
	end

	private
	def favorite_params
		params.require(:favrite).permit(:user_id, :idea_id)
	end
end
