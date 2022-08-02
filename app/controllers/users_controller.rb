class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index]
  def index
    @user = User.find_by(id: session[:current_user]["id"])
  end
  
  def new
    @user = User.new
  end

  def create
    
  end 
  
  def show
  end

  private

  def authenticate_user
    if session[:current_user]== nil
      flash[:alert] = "Please login first!"
      redirect_to root_path
    end 
  end 

end 