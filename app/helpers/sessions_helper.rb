module SessionsHelper

  def log_in(developer)
    session[:developer_id] = developer.id
  end

  def current_user
    @current_user ||= Developer.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
