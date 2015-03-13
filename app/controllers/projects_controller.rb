class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user
  def create
    @projects = Project.new(project_params)
    respond_to do |format|
      if @projects.save
        format.html { redirect_to projects_path, notice: 'Project was successfully created.' }
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
    @project = Project.find(params[:id])
  end

  def show
    # @project = Project.find(params[:id])
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully removed.'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :max_hours)
  end
end
