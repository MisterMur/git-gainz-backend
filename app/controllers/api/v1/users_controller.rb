class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_user_from_token!, :only => [ :create]

  def index
    # byebug
    @users=User.all
    # byebug
    render json: @users#,:include => [:schedules]
  end

  def show
    @user = get_user
    render json: @user#, :include => [:schedules]
  end

  def create
    @user = User.create(user_params)
    # byebug
    render json: @user
  end

  def update
    @user = get_user
    @user.update(update_user_params)
    render json: @user#, :include => [:schedules]
  end

private
  def get_user
    @user=User.find(params[:id])
  end

  def update_user_params
    params.require(:user).permit(:password,:name,:email,:phone,:username)
  end

  def user_params
    params.require(:user).permit(:password,:name,:email)
  end
end
