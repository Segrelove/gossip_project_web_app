class PotinController < ApplicationController
  def content
    @potin = Gossip.find(params[:id])
    p @potin.id
    @user = User.all
  end
end
