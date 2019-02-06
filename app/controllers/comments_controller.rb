class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.gossip_id = params[:gossip_id]

    if @comment.save
      flash[:notice] = "Ton commentaire a bien été posté !"
      redirect_to gossip_path(@comment.gossip)
      return
    else      
    end
  end 

  def edit
    @comment = Comment.find(params[:id])
    @comment.gossip_id = params[:gossip_id]
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Ton commentaire a bien été modifié !"
      redirect_to root_path
      return
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy 
      flash[:notice] = "Ton commentaire a bien été supprimé."
      redirect_to gossip_path(@comment.gossip)
      return
    else
    end
  end

  private 

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
