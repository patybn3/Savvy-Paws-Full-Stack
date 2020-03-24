class LikesController < ApplicationController
  before_action :set_like, only: %i[update destroy]

  # GET /likes
  def index
    @likes = Like.all

    render json: @likes
  end

  # GET /likes/1
  def show
    render json: Like.find(params[:id])
  end

  # POST /likes
  def create
    @like = current_pet.likes.build(like_params)

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /likes/1
  def update
    if @like.update(like_params)
      render json: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    @like.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_like
    @like = current_pet.likes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def like_params
    params.require(:like).permit(:pet_id)
  end
end
