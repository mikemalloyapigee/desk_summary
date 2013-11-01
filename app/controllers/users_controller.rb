class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  def new
    @title = "New User"
    @user = User.new
  end
  
  def index
    @title = "All users"
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name unless @user.name.blank? or @user.nil?
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Apigee App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @title = "Edit Profile"
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in current_user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed"
    redirect_to users_url
  end
  
  private
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      unless current_user?(@user) or current_user.admin?
        redirect_to users_url
        flash[:error] = "Insufficient privileges or incorrect user" 
      end
    end
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
  
end
