class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
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
