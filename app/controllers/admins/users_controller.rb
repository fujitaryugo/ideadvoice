class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@users = User.all.reverse_order
  end
  def show
  	@user = User.find(params[:id])
  	@ideas = @user.ideas.all.reverse_order
  end
end
