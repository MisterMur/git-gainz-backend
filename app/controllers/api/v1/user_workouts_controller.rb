class Api::V1::UserWorkoutsController < ApplicationController
  def index
    @user_workouts = UserWorkout.all
    render json: @user_workouts
  end

  def update
    @user_workout.update(user_workouts_params)
    render json: @user_workout
  end

  def show
    @user_workout = find_user_workout
  end

  def create
    # byebug
    @user_workout = UserWorkout.create(user_workouts_params)
    render json: @user_workout,serializer: nil
  end

private

  def user_workouts_params
    params.require(:user_workout).permit(:id,:user_id,:workout_id)
  end

  def get_workout
    Workout.find(params[:workout_id])
  end

  def find_user_workout
    @user_workout = UserWorkout.find(params[:id])
  end
end
