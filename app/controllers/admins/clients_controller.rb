class Admins::ClientsController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@clients = Client.all.reverse_order
  end
  def show
  	@client = Client.find(params[:id])
  	@orders = @client.orders.all.reverse_order
  end
end
