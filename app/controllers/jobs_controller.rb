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

def

private

def job_params
  params.require(:job).permit(:title, :position, :description)
end

end
