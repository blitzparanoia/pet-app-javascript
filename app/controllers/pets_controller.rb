class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new()
  end

  def index
  end

  def show
  end

  private

  def pet_params
    #add job attributes
    params.require(:pet).permit(:name, :breed)
  end

end
