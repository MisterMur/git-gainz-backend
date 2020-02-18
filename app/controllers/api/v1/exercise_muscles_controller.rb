class Api::V1::ExercisesMusclesController < ApplicationController


  def index
		byebug
    @exercise_muscles=ExerciseMuscle.all
    render json: @exercises_muscles
  end

  def show
    @exercise_muscle = get_exercise_muscle
    render json: @exercises_muscle
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
