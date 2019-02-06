class UserController < ApplicationController
  
  def index
    @users = User.all
    @cities = City.all
  end

  def show
    @user = User.find(params[:id])
  end
end
