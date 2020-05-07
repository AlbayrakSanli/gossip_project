class CityController < ApplicationController
  def show
    @gossips = Gossip.all
    @cities = City.all 
    @city = City.find_by(id: params[:id])
  end
end
