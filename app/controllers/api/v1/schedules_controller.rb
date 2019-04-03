class Api::V1::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def update
    @schedule.update(schedule_params)
    if @schedule.save
      render json: @schedule, status: :accepted
    else
      render json: { errors: @schedule.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @schedule = find_exercise
  end

  def create
    @schedule = Schedule.create(schedule_params)
    render json: @schedule
  end

private

  def schedule_params
    params.require(:schedules).permit(:name)
  end

  def find_schedule
    @schedule = Schedule.find(params[:id])
  end
end
