class UserController < ApplicationController
  def display
    @user = User.find(params[:id])
  end
end
