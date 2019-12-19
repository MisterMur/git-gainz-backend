class Api::V1::UserSchedulesController < ApplicationController
  def index
    @user_schedules = UserSchedule.all
    render json: @user_schedules
  end

  def update
    @user_schedule.update(user_schedule_params)
    render json: @user_schedule
  end

  def show
    @user_schedule = find_user_schedule
  end

  def create
    # byebug
    @user_schedule = UserSchedule.create(user_schedule_params)
    render json: @user_schedule
  end

private

  def user_schedule_params
    params.require(:user_schedule).permit(:user_id,:schedule_id)
  end

  def find_user_schedule
    @user_schedule = UserSchedule.find(params[:id])
  end
end
