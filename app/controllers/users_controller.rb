class UsersController < ApplicationController

  def create
  	@user = User.create(user_params)
  	redirect_to user_path(@user)
  end

  def show
	@user = User.find(params[:id])
  	@external_url = "http://growthapp.co/d/7/#{@user.email}"
	
  end

  def user_params
  	params.require(:user).permit(:email)
  end
end
