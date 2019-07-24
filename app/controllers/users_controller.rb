class UsersController < ApplicationController
	before_action :authenticate_user!
  def show
  	@user = User.find(params[:id])
  	@ideas = @user.ideas.reverse_order
  	@favorites = @user.favorites.all.reverse_order
  	@awards = Award.where(idea: @ideas).reverse_order
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id)
  end

  private
  def user_params
  	params.require(:user).permit(:name, :sex, :age, :location, :user_image, :job, :email)
  end

end
