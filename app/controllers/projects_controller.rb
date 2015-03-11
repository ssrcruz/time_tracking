class ProjectsController < ApplicationController
  # before_action :set_project, only: [:show, :edit, :update, :destroy, :email]

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def show
    # @project = Project.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  # def set_project
  #   @project = Project.find(params[:id])
  # end

  def project_params
    params.require(:project).permit(:name, :max_hours)
  end
end
