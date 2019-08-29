class JobsController < ApplicationController
  include JobsHelper
   before_action :check_for_logged_in, except: [:index]
  def new
   if params[:company_id] && company = Company.find_by_id(params[:company_id])
     @job = company.jobs.build
   else
     @job = Job.new
     @job.build_company
   end
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
   if params[:company_id] && company = Company.find_by_id(params[:company_id])
     @jobs = company.jobs
   else
     @jobs = Job.includes(:company,:user)
   end
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
     render :edit
   end
 end

 def destroy
   set_job
   @job.destroy
   redirect_to jobs_path
 end

  private

  def job_params
    params.require(:job).permit(:title, :position, :description, :phone_number, :company_id, company_attributes: [:name, :motto, :age])
  end

  def set_job
    @job = Job.find_by(id: params[:id])
   if !@job
     redirect_to jobs_path
   end
  end


end
