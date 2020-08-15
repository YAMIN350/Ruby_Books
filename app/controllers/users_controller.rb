class UsersController < ApplicationController
  #pour gerer les sessions active go to application_controller.rb

  def home
  end

  def login
  end

  def logout
    session[:user_id] = nil
    flash[:info] = " Vous êtes maintenant déconnecté"
    redirect_to ""
  end

  def check
    @current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Vous êtes maintenant connecté"
      redirect_to "/books"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/login"
    end
  end

end
