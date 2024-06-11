class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_login
    unless logged_in?
      flash[:alert] = "You must log in for this"
      redirect_to login_path
    end
  end

  def require_admin
    #if you need to reserve certain controller actions for admins
    unless !!@current_user.category("admin")
      flash[:alert] = "You must be an admin to perform this task"
    end
  end
end
