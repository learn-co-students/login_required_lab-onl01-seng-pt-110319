class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :is_logged_in?
  
  def current_user
    # @user = User.find_by(id: session[:user_id])
    session[:name]    
  end

  def is_logged_in?
    if !current_user
      redirect_to login_path
    end
  end
end
