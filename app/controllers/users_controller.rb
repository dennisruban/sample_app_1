class UsersController < ApplicationController
  
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy
  
  
  def index
    @title = "All users"
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
    
  end
  
     def show
     @user = User.find(params[:id])
     @microposts = @user.microposts.paginate(:page => params[:page])
     @title = @user.name
   end
  
  
  def index
    @title = "All users"
    @users = User.paginate(:page => params[:page])
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
  
  
  def edit
    @title = "Edit user"
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit user"
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end
  
  private
  
  
  def authenticate
    deny_access unless signed_in?
   end
   
   def correct_user
     @user = User.find(params[:id])
     redirect_to(root_path) unless current_user?(@user)
   end
   
   def admin_user
     redirect_to(root_path) unless current_user.admin?
   end
   

end
