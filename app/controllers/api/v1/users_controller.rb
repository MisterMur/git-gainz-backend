class Api::V1::UsersController < ApplicationController

  def index
    @users=User.all
    # byebug
    render json: @users,:include => [:schedules]
  end

  def show
    @user = get_user
    render json: @user, :include => [:schedules]
  end

  def create
    byebug
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = get_user
    @user.update(user_params)
    render json: @user, :include => [:schedules]
  end

private
  def get_user
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username,:password)
  end
end
