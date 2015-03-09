class DevelopersController < ApplicationController

  def create
    @developer = Developer.new(params[:developer])
    if @developer.save
      respond_to do |format|
        format.html { redirect_to(@developer, notice: 'User was successfully created.') }
      end
    end
  end

  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
