class JobsController < ApplicationController
  before_action :find_job, only: [:show, :update,:edit, :destroy]
  def index
    @jobs = Job.all.order("created_at DESC")
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to @job
    else 
      render new_index_path
    end
  end

  def show
    # @job = Job.All
  end

  def update
    if @job.update(jobs_params)
      redirect_to @job
    else 
      render "Edit"
    end
  end

  def edit 
  end

  def new
    @job = Job.new
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private 

  def jobs_params
    params.require(:job).permit(:company,:description,:title,:url)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end