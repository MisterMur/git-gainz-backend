class Api::V1::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    # byebug
    render json: @exercises,:include=>[:muscles,:circuits]
  end

  def update
    @exercise.update(exercise_params)
    if @exercise.save
      render json: @exercise, status: :accepted
    else
      render json: { errors: @exercise.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @exercise = find_exercise
		# byebug
    render json:@exercise,:include=>[:muscles,:circuits]
  end

  def create
    # byebug
    @exercise = Exercise.create(exercise_params)
    render json: @exercise
  end

private

  def exercise_params
    params.require(:exercise).permit(:id,:name,:circuits =>[:id,:weight,:reps,:rest,:exercise_id])
  end

  def find_exercise
    @exercise = Exercise.find(params[:id])
  end
end
