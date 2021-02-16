class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new # for the form
  end

  def create
    @pet = Pet.create(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
      # prefix_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pets_path
    else
      # render 'edit.html.erb'
      render :edit
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
