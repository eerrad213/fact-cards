class UsersController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "P@ssw0rd!", only: :destroy


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :salt, :encrypted_password)
  end
end
