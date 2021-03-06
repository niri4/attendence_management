class UsersController < ApplicationController

  def index

  end
  def new
    @user = User.new
    @roles = User.roles
  end

  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end


  private

  def user_params
    params.require(:user).permit(:email,:name,:password,:password_confirmation,:role)
  end
end
