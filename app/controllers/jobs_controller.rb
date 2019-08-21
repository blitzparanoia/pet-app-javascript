class JobsController < ApplicationController

def new
  @job = Job.new
end

def create
  @job = Job.new(job_params)
  @job.save
  redirect_to job_path(@job)
end

def index
  @jobs = Job.all
end

def show
  @job = Job.find_by(id: params[:id])
end

def edit
  @job = Job.find_by(id: params[:id])
end

def update
  @job = Job.find_by(id: params[:id])
  if @job.update(job_params)
  redirect_to job_path(@job)
else
  render :index
end
end

private

def job_params
  params.require(:job).permit(:title, :position, :description)
end

end
