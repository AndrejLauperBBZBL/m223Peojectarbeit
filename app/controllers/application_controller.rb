class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  # Simulate user login, assuming you store user_id in session when logged in
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    redirect_to new_session_path, alert: "You must log in first" unless current_user
  end

  def require_logged_out
    if current_user
      redirect_to root_path, notice: "You are already logged in."
    end
  end

  def authenticate_admin!
    redirect_to root_path, alert: "Admin access only" unless current_user&.admin?
  end
end
