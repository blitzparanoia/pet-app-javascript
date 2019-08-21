class JobsController < ApplicationController

#to see all jobs, create? associate a job listing to a pet
def index
  @jobs = Job.all.includes(:users, :pets)
end

def show
  @job = Job.find_by(id: params[:id])
end

end
