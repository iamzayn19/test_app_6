class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index]
  def index
    @user = User.find_by(id: session[:current_user]["id"])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = "Account created successfully!"
      redirect_to root_path 
    else 
      flash[:alert] = "Please fill the form again."
      render :new
    end 
    
  end 
  
  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password)
  end 

  def authenticate_user
    if session[:current_user]== nil
      flash[:alert] = "Please login first!"
      redirect_to root_path
    end 
  end 

end 