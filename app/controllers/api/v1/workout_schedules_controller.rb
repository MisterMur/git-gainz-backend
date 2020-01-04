class Api::V1::WorkoutSchedulesController < ApplicationController
  def index
    @workout_schedules=WorkoutSchedule.all
    render json: @workout_schedules
  end

  def show
    @workout_schedule = get_workout_schedule
    render json: @workout_schedule
  end

  def create

    @workout_schedule = WorkoutSchedule.create(workout_schedule_params)
    # byebug
    render json: @workout_schedule
  end

  def update
    @workout_schedule = get_workout_schedule
    @workout_schedule.update(workout_schedule_params)
    render json: @workout_schedule
  end

private
  def get_workout_schedule
    @workout_schedule=WorkoutSchedule.find(params[:id])
  end

  def workout_schedule_params
    params.require(:workout_schedule).permit(:workout_id,:schedule_id)
  end
end
