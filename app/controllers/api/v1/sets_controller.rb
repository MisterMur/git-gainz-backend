class Api::V1::SetsController < ApplicationController
  def index
    @sets = Set.all
    render json: @sets
  end

  def update
    @set.update(set_params)
    if @set.save
      render json: @set, status: :accepted
    else
      render json: { errors: @set.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @set = find_set
  end

  def create
    @set = Set.create(set_params)
    render json: @set
  end

  private

  def set_params
    params.require(:sets).permit(:reps,:weight,:rest)
  end

  def find_set
    @set = Exercise.find(params[:id])
  end
end
