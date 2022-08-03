class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]
  def index
    redirect_to new_user_path
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
      render :new
    end 
  end 
  
  def show
    @user = User.find_by(id: session[:current_user]["id"])
    @articles = Article.all
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