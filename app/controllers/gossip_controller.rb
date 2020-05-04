class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @un_gossip = Gossip.find(params[:id])
  end

  def create
    Gossip.create author: params[:author], content: params[:content]
    redirect_to '/'
  end

  def landing
  end
end
