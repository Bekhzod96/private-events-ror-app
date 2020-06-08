class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def login
    @user = User.new
  end

  protected

  def params_user
    params.require(:user).permit(:username)
  end

end