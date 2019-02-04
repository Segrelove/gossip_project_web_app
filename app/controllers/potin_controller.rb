class PotinController < ApplicationController
  def content
    @potin = Gossip.find(params[:id])
    p "#" * 100
    p @potin.id
    p "#" * 100
    @user = User.all
  end
end
