class UsersController < ApplicationController
  def index
  end 
  
  def sign_in
    render :json => params
  end 
end 