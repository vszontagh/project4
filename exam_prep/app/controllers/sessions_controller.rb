class SessionsController < ApplicationController

  def new
   # @user = User.new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to categories_path
    else
      if user == nil
        flash[:danger] = "User does not exists"
      else
        flash[:danger] = "Incorrect password or username"
      end

      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

end
