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
  
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  
  
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App 1!"
      redirect_to @user
      # Handle s successful save.
    else
      @title = "Sign up"
      render 'new'  
    end
  end
end
