class Api::V1::MusclesController < ApplicationController
	def index
    @muscles = Muscle.all
    render json: @muscles
  end

  def update
    @muscle.update(muscle_params)
    if @muscle.save
      render json: @muscle, status: :accepted
    else
      render json: { errors: @muscle.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @muscle = find_muscle
    render json: @muscle
  end

  def create
    # byebug
    @muscle = Muscle.create(muscle_params)
    render json: @muscle
  end

private

  def muscle_params
    params.require(:muscle).permit(:id,:name)
  end

  def find_muscle
    @muscle = Muscle.find(params[:id])
  end
end
