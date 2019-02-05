class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: rand(1..10))
    if @gossip.save
      flash[:notice] = "Ton gossip a bien été créé !"
      redirect_to root_path
      return
    else 
      render :new
    end
  end

  def show
  end

end
