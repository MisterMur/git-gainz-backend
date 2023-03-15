class Api::V1::UserWorkoutsController < ApplicationController
	def index
	  @user_workouts = UserWorkout.all
	  render json: @user_workouts
	end
  
	def update
	  @user_workout.update(user_workouts_params)
	  render json: @user_workout, serializer: nil
	end
  
	def show
	  @user_workout = find_user_workout
	  render json: @user_workout
	end
  
	def create
	  @user_workout = UserWorkout.create(user_id: user_params.id, name: get_workout.name, workout_id: get_workout.id)
	  if @user_workout.persisted?
		@user_workout.workout_snapshot.exercises.each do |exercise|
		  exercise.circuits.each do |circuit|
			@user_workout.completed_circuits.create(
			  weight: circuit.weight,
			  reps: circuit.reps,
			  rest: circuit.rest,
			  exercise_id: circuit.exercise_id
			)
		  end
		end
	  end
	  render json: @user_workout, serializer: nil
	end
  
	def muscle_sets_data
	  sets_data = find_user_workout.muscle_sets_data
	  render json: sets_data, serializer: nil
	end
  
	def muscle_reps_data
	  reps_data = find_user_workout.muscle_reps_data
	  render json: reps_data, serializer: nil
	end
  
	private
  
	def user_params
	  User.find(params[:user_id])
	end
  
	def get_workout
	  Workout.find(params[:completedWorkout][:id])
	end
  
	def find_user_workout
	  @user_workout = UserWorkout.find(params[:id])
	end
  
	def user_workouts_params
	  params.require(:user_workout).permit(:name)
	end
  end
  