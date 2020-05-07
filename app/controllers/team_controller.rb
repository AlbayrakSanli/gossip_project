class TeamController < ApplicationController
  def index
    @many_people = Team.all
  end

  def show
    @one_people = Team.find(params[:id])
  end
end
