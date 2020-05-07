require 'pry'

class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
    @city = City.find_by(name: "Belfort")
  end

  def show
    @un_gossip = Gossip.find(params[:id])
  end

  def new
    if session[:user_id]
    else
      redirect_to '/session/new'
    end
  end

  def create
    author = current_user.first_name
    city = current_user.city
    @new_gossip = Gossip.new title: params[:title], author: author, content: params[:content], city: city
    if @new_gossip.save
      redirect_to gossip_index_path, info:"Le potin a été ajouté avec succès."
    else
      redirect_to new_gossip_path, danger:"Error in the field"
    end
  end

  def edit
    @un_gossip = Gossip.find(params[:id])
    if session[:user_id]
      if current_user.first_name != @un_gossip.author 
        redirect_to '/gossip'
      else
      end
    else
      redirect_to '/session/new'
    end
  end

  def update
    @un_gossip = Gossip.find(params[:id])
    if @un_gossip.update title: params[:title], content: params[:content]
      redirect_to gossip_path, info:"Potin bien mis à jour !"
    else
      redirect_to edit_gossip_path, danger:"Erreur lors de la mise à jour !"
    end
  end

  def destroy
    @un_gossip = Gossip.find(params[:id])
    if current_user.first_name == @un_gossip.author
      @un_gossip.destroy
      redirect_to "/gossip", info: "Votre potin a été supprimé avec succès !"
    else
      flash.now[:danger] = "Vous ne pouvez pas supprimer le potin qui ne vous appartient pas."
      render 'show'
    end
  end
end 
