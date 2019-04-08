class Api::V1::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    byebug
    render json: @schedules
  end

  def update
    @schedule = find_schedule
    # byebug

    # @workout = Workout.create(workout_params)
    # workouts = []
    # workouts_params.each do|w|
    #   workout = Workout.find(w[:id])
    #   workouts << workout
    # end
    # workouts << @workout
    # byebug
    # @schedules.workouts << @workout
    @schedule.workouts.build(workouts_params)
    byebug
    @schedule.update(schedule_params)
    # byebug
    if @schedule.save
      render json: @schedule,:include=>workouts, status: :accepted
    else
      render json: { errors: @schedule.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @schedule = find_schedule
    # byebug
    render json: @schedule,:include => [:workouts]
  end

  def create
    @schedule = Schedule.create(schedule_params)
    render json: @schedule
  end

private

  def schedule_params
    # byebug
    params.require(:schedule).permit(:id,:name,:workouts =>[:id,:name,:exercises],:exercises=>[:id,:name])
  end

  def find_schedule
    @schedule = Schedule.find(params[:id])
  end
  def workout_params

    params.permit(:id,:name,:exercises)
  end
  def workouts_params
    params[:workouts].map do|workout|
      workout.permit(:id, :name,:exercises)
    end
    byebug
  end
end
