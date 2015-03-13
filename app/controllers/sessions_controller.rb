class SessionsController < ApplicationController
  def new

  end

  def create
    developer = Developer.find_by(email: params[:email])
    if developer && developer.authenticate(params[:password])
      make_session(developer)
      redirect_to projects_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def logout
    session[:developer_id] = nil
    @current_developer = nil
    redirect_to new_session_path
  end

  private

  def make_session(developer)
    session[:developer_id] = developer.id
  end

end
