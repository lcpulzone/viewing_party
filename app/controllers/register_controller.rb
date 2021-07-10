class RegisterController < ApplicationController
  def index; end

  def show; end

  def new
    @user = User.new
  end

  def create
    user = user_params
    user[:email] = user[:email.downcase]
    new_user = User.create(user)
    if new_user.save
      session[:user_id] = new_user.id
      flash[:success] = "Welcome, #{new_user.username}!"
    end
    redirect_to dashboard_index_path
  end

  def edit; end

  def update; end

  def destroy; end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
