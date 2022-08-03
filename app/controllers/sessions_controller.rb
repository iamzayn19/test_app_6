class SessionsController < ApplicationController

  def create
    @user = User.authenticated(params[:email],params[:pass])
    if @user.empty?
      flash[:alert] = "Invalid email or password"
      redirect_to request.referrer
    else
      session[:current_user] = @user.first
      redirect_to user_path
   end
  end
  
  def destroy
    session.delete(:current_user)
    redirect_to root_path
  end 

end 