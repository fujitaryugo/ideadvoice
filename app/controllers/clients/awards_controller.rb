class Clients::AwardsController < ApplicationController
	before_action :set_idea
	def create
		@idea = Idea.find(params[:idea_id])
		@award = current_client.awards.create(idea_id: @idea.id)
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		award = current_client.awards.find_by(idea_id: @idea.id)
		award.destroy
	end

	private
	def set_idea
		@idea = Idea.find(params[:idea_id])
		@order = Order.find(params[:order_id])
	end

end
