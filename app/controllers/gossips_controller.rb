class GossipsController < ApplicationController
  
  def index
    @gossips = Gossip.all
    @users = User.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.all
    @city = City.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(post_param)
      flash[:notice] = "Ton gossip a bien été modifié !"
      redirect_to root_path
      return
    else
      render :edit
    end
  end

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

  def post_param
    post_param = params.require(:gossip).permit(:title, :content)
  end
end
