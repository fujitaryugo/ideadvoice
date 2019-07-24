class Clients::ClientsController < ApplicationController
	before_action :authenticate_client!
  def show
  	@client = Client.find(params[:id])
    @order = Order.new
  	@orders = @client.orders.reverse_order
  end

  def update
  	@client = Client.find(params[:id])
  	@client.update(client_params)
  	redirect_to clients_client_path(@client.id)
  end

  private
  def client_params
  	params.require(:client).permit(:group_name, :last_name, :first_name, :phone_number, :client_url, :introduction, :client_image)
  end
end