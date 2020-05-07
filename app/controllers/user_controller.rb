require 'pry'

class UserController < ApplicationController
  def index
    @users = User.all
    @user = User.find_by(params[:email])
    redirect_to "/user/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
    @city = City.find_by(name: "Belfort")
  end

  def new
  end

  def create
    @user = User.new first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], age: params[:age], city: params[:city], password: params[:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/gossip", info:"L'utilisateur a été créé."
    else
      redirect_to new_user_path, danger:"Ehhhhh ohhhhhh tu as fait une erreur."
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], age: params[:age], city: params[:city], password: params[:password]
      redirect_to user_path, info:"Profil utilisateur a été mise à jour !"
    else
      redirect_to edit_user_path, danger:"Erreur lors de la mise à jour !"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to "/gossip"
  end

end
