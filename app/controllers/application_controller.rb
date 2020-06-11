class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :required_use

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user
  end

  def required_user
    return if logged_in?

    flash[:danger] = 'You need to log in to access here'
    redirect_to login_path
  end
end
