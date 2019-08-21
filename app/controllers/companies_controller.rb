class CompaniesController < ApplicationController
  def index
    @companies = Company.all.includes(:users)
  end

  def show
    @company = Company.find_by(id: params[:id])
  end
end
