class ApplicationController < ActionController::Base
  before_action :authenticate_user

  # Make the current_user method available to views also, not just controllers:
  helper_method :current_user, :user_signed_in?

  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    current_user.present?
  end

  # authroize method redirects user to login page if not logged in:
  def authenticate_user
    redirect_to login_path, alert: '请先登录。' if current_user.nil?
  end

  def check_authorize
    redirect_back fallback_location: root_path, alert: '你没有权限进行该操作。' unless current_user.is_authorized?
  end
end
