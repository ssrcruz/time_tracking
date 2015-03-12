class TimeEntriesController < ApplicationController
  before_action :set_time_entry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user

  def create
    @time_entry = TimeEntry.new(time_entry_params)
    respond_to do |format|
      if @time_entry.save
        format.html { redirect_to time_entries_path, notice: "Time entry successfully created"}
      else
        format.html { render :new }
      end
    end
  end

  def index
    @time_entries = TimeEntry.all
  end

  def new
    @time_entry = TimeEntry.new
  end

  def edit
    @time_entry = TimeEntry.find(params[:id])
  end

  def show
  end

  def update
    respond_to do |format|
      if @time_entry.update(time_entry_params)
        format.html { redirect_to time_entries_path, notice: 'Time entry successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @time_entry.destroy
    redirect_to time_entries_url, notice: 'Time entry was successfully removed.'
  end

  private

  def set_time_entry
    @time_entry = TimeEntry.find(params[:id])
  end

  def time_entry_params
    params.require(:time_entry).permit(:developer_id, :project_id, :duration, :worked_on)
  end
end
