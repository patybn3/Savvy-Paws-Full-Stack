# frozen_string_literal: true

class PetsController < OpenReadController
  before_action :set_pet, only: %i[update destroy]

  # GET /pets
  def index
    @pets = if current_user
              p current_user.pets
            else
              Pet.all
            end
    p @pets
    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def add_like
    @pet = Pet.fin(params[:pet_id])

    if @pet
      @pet.likes[0].like_count += 1

      if @pet.like[0].save
        respond_to do |format|
          format.json { render :show, status: :ok }
        end
      end
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = current_user.pets.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pet_params
    params.require(:pet).permit(:species, :breed, :name, :dob, :site, :user_id)
  end
end
