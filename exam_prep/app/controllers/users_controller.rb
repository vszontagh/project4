class UsersController < ApplicationController

  #before_action :authenticate, except: [:index]

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
      flash[:success] = "welcome to proPrep!"
    else
      render 'new'
    end
  end

  def show
    if params[:id].to_i == current_user.id
      @user = User.find(params[:id])
      @tasks = @user.tasks
      @messages = @user.messages
    else
      redirect_to users_path
    end

  end

  private

    def user_params
      # params[:username] = params[:user].downcase
      params.require(:user).permit(:username,:password, :password_confirmation)
    end

end
