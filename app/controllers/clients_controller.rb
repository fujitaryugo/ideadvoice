class ClientsController < ApplicationController
	before_action :authenticate_user!
  def show
  	@client = Client.find(params[:id])
  	@orders = @client.orders.reverse_order
  end


  private
  def client_params
  	params.require(:client).permit(:group_name, :last_name, :first_name, :phone_number, :client_url, :introduction, :client_image)
  end
end
