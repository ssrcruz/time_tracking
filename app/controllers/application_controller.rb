class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def authenticate_user
    if session[:developer_id]
      @current_developer = Developer.find(session[:developer_id])
      return true
    else
      flash[:notice] = "You must log in to see that page"
      redirect_to login_path
      return false
    end
  end
end
