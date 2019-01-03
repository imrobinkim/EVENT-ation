class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    cookies.delete("current_user")
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      cookies["current_user"] = @user.username
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :age, :points, :email, :password, :password_confirmation)
  end
end
