class Clients::AwardsController < ApplicationController
	def create
		@idea = Idea.find(params[:idea_id])
		@award = current_client.awards.new(idea_id: @idea.id)
		@award.save
		redirect_to clients_client_order_idea_path(@award.client_id,@idea.order_id,@idea.id)
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		@award = current_client.awards.find_by(idea_id: @idea.id)
		@award.destroy
		redirect_to clients_client_order_idea_path(@award.client_id,@idea.order_id,@idea.id)
	end

	private
	def award_params
		params.require(:award).permit(:client_id, :idea_id)
	end

end
