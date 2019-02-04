class HomePageController < ApplicationController
  def index
    @gossip = Gossip.all
    @user = User.all
  end
end
