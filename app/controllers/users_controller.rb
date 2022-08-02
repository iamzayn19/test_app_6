class UsersController < ApplicationController
  def index
  end 
  
  def sign_in
    @user = User.authenticated(params[:email],params[:pass])
    if @user.empty?
      flash[:alert] = "Invalid email or password"
      redirect_to request.referrer
    else  
      render :index
   end
  end 
end 