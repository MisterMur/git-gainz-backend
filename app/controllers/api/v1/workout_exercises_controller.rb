class Api::V1::WorkoutExercisesController < ApplicationController

    def index
      @workout_exercises=WorkoutExercise.all
      render json: @workout_exercises
    end

    def show
      @workout_exercise = get_workout_exercise
      render json: @workout_exercise
    end

    def create
      byebug
      @workout_exercise = WorkoutExercise.create(workout_exercise_params)
      render json: @workout_exercise
    end

    def update
      @workout_exercise = get_workout_exercise
      @workout_exercise.update(workout_exercise_params)
      render json: @workout_exercise
    end

  private
    def get_workout_exercise
      @workout_exercise=WorkoutExercise.find(params[:id])
    end

    def workout_exercise_params
      params.require(:workout_exercise).permit(:workout_id,:exercise_id)
    end
end
