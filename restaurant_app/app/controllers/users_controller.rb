class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to log_in_path
  end

  def log_in

  end

  def profile
    # check if the user is logged in
    # @order = Order.new
    @user = current_user
    # @orders = Order.where user_id: @user.id
    # @orders = Order.find_by(user_id: session[:user_id])
    if session[:user_id]
      @user = User.find session[:user_id]
    else
      redirect_to log_in_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
