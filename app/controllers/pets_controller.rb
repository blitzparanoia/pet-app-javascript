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
  end

  def index
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    if !@pet
      redirect_to pets_path
    end
  end

  def edit
    @pet = Pet.find_by(id: params[:id])
    if !@pet
      redirect_to pets_path
    end
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    if !@pet
      redirect_to pets_path
    end
    if @pet.update(pet_params)
  redirect_to pet_path(@pet)
else
  render :edit
end
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    if !@pet
      redirect_to pets_path
    end
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    #add job attributes
    params.require(:pet).permit(:name, :breed)
  end

end
