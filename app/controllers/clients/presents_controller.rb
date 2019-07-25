class Clients::PresentsController < ApplicationController
  def new
  end

  def create
  	@present = Present.new(present_params)
  	if@present.save
    	@idea = @present.idea
    	@idea.send_status = 1
    	@idea.save
    	PresentMailer.present_send_mail(@present).deliver
    	flash[:notice] = "送信しました！"
    	# binding.pry
    	redirect_to clients_order_path(@idea.order_id)
    else
      @idea = @present.idea
      flash[:alert] = "送信に失敗しました！"
      redirect_to clients_order_idea_path(@idea.order_id,@idea)
    end
  end

  private
  def present_params
  	params.require(:present).permit(:message, :client_id, :user_id, :idea_id)
  end
end
