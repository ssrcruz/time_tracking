class DevelopersController < ApplicationController

  def create
    @developer = Developer.new(developer_params)
    if @developer.save
      respond_to do |format|
        format.html { redirect_to(@developer, notice: 'User was successfully created.') }
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
  end

  def show
    # @developer = Developer.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def developer_params
    params.require(:developer).permit(:name, :email, :password)
  end
end
