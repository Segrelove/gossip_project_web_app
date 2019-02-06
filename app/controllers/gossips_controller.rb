class GossipsController < ApplicationController
  
  def index
    @gossips = Gossip.all
    @users = User.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.all
    @city = City.all
    @comment = Comment.new
    @comment.gossip_id = @gossip.id
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(post_params)
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

  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy 
      flash[:notice] = "Ton gossip a bien été supprimé."
      redirect_to root_path
      return
    else
    end
  end

  private

  def post_params
    params.require(:gossip).permit(:title, :content)
  end
end
