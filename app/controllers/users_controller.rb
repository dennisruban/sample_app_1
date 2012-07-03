class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
    
  end
  
  
  
    #def show
    #@user = User.find(params[:id])
  #@user = User.find_by_username(params[:id])
       #raise ActiveRecord::RecordNotFound unless @user
    #rescue ActiveRecord::RecordNotFound
      # render :text => "User ##{params[:id]} does not exist"
   #end
  
  
  
  
  
  
  def new
    @title = "Sign up"
  end
end
