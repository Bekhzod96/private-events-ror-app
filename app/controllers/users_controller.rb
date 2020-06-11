class UsersController < ApplicationController
  def new
  
  end

  def create
    @user = User.new(params_user)

    if @user.save
      flash[:success] = "You have successfully signed up!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:danger] = "You have successfully signed up!"
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @upcoming_events = @user.upcoming_events
    @previous_events = @user.previous_events
  end

  protected

  def params_user
    params.require(:user).permit(:username)
  end

  def upcoming_events(user)
    @
  end

  def previous_events(user)
  end

end