class Clients::UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@ideas = @user.ideas.reverse_order
  	@favorites = @user.favorites.all.reverse_order
  	@awards = Award.where(idea: @ideas).reverse_order
  end
end
