class Api::V1::UsersController < ApplicationController

  def index
    @users=User.all
    render json: @users, :include => [:schedules,:workouts]
  end

  def show
    @user = get_user
    render json: @user, :include => [:schedules,:workouts]
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = get_user
    @user.update(user_params)
    render json: @user, :include => [:schedules,:workouts]
  end

private
  def get_user
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name,:username,:password)
  end
end
