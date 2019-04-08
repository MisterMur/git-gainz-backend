class Api::V1::WorkoutsController < ApplicationController
  def index
    @workouts=Workout.all
    # byebug
    render json: @workouts,:include => [:exercises]
  end

  def show
    @workout = get_workout
    render json: @workout, :include => [:exercises]
  end

  def create
    @workout = Workout.create(workout_params)
    render json: @workout
  end

  def update
    @workout = get_workout
    @workout.update(workout_params)
    render json: @workout, :include => [:exercises]
  end

private
  def get_workout
    @workout=Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:id,:name,:exercises)
  end
end
