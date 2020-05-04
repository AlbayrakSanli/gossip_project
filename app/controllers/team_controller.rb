class TeamController < ApplicationController
  def equipe
    @teams = Team.all
  end

  def contact
  end
end
