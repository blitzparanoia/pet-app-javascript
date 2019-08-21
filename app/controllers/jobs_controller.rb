class JobsController < ApplicationController

def new
  @job = Job.new
end

def create
   @job = current_user.jobs.build(job_params)
   if @job.save
     redirect_to job_path(@job)
   else
     @job.build_company unless @job.company
     render :new
   end
 end

def index
  @jobs = Job.all
end

def show
   set_job
 end

 def edit
   set_job
 end

 def update
   set_job
   if @job.update(job_params)
     redirect_to job_path(@job)
   else
     render :index
   end
 end

def destroy
  set_job
  @job.destroy
  redirect_to jobs_path
end

private

def job_params
  params.require(:job).permit(:title, :position, :description)
end

def set_job
  @job = Job.find_by(id: params[:id])
 if !@job
   redirect_to jobs_path
 end
end

end
