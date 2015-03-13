class DevelopersController < ApplicationController
  before_action :set_developer, only: [:edit, :update, :destroy]
  before_action :authenticate_user, except: [:new, :create]

  def create
    @developer = Developer.new(developer_params)
    if @developer.save
      respond_to do |format|
        format.html { redirect_to(developers_path, notice: 'User was successfully created.') }
      end
    else
      render :new
    end
  end

  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def show

  end

  def update
    if @developer.update(developer_params)
      redirect_to developers_path, notice: 'Developer was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @developer.destroy
    redirect_to developers_url, notice: 'Developer was successfully destroyed'
  end

  private

  def set_developer
    @developer = Developer.find_by(session[:developer_id])
  end

  def developer_params
    params.require(:developer).permit(:name, :email, :password)
  end

  def make_session(developer)
    session[:developer_id] = developer.id
  end
end
