class Api::V1::ExerciseMusclesController < ApplicationController


  def index
    @exercise_muscles=ExerciseMuscle.all
		# byebug
    render json: @exercise_muscles
  end

  def show
    render json: get_exercise_muscle
  end

  def create
    # byebug
    @exercise_muscle = ExerciseMuscle.create(exercise_muscle_params)
    render json: @exercise_muscle
  end

  def update
    @exercise_muscle = get_exercise_muscle
    @exercise_muscle.update(exercise_muscle_params)
    render json: @exercise_muscle
  end

private
  def get_exercise_muscle
    @exercise_muscle=ExerciseMuscle.find(params[:id])
  end

  def exercise_muscle_params
    params.require(:exercise_muscle).permit(:exercise_id,:muscle_id)
  end
end
