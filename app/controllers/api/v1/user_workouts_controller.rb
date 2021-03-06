class Api::V1::UserWorkoutsController < ApplicationController
  def index
    @user_workouts = UserWorkout.all
    render json: @user_workouts
  end

  def update
    @user_workout.update(user_workouts_params)
    render json: @user_workout,serializer: nil
  end

  def show
    @user_workout = find_user_workout
    render json: @user_workout
  end

  def create
    @user_workout = UserWorkout.create(user_id: user_params.id, name: get_workout.name,workout_id: get_workout.id )
		cc = @user_workout.workout_snapshot.exercises.first.circuits.first
		if(@user_workout.workout_snapshot)
			get_workout.exercises.each_with_index do |exercise,idx|
				circuits_dup = []
				exercise.circuits.each do |circuit|
					copy_circuit = circuit.dup

					# @user_workout.workout_snapshot.exercises[idx].save
					# copy_circuit[:exercise_id]=@user_workout.workout_snapshot.exercises[idx].id
					# copy_circuit.save
					# byebug
					# circuits.push(copy_circuit)
					# circuits_dup.push(copy_circuit)
					# circuit.destroy
					# circuit.destroy
					# byebug
				end
				# circuits_dup.map do |c|
				#
					# @user_workout.workout_snapshot.exercises[idx].circuits
				# end
				# byebug
			end
			# byebug
		end

    render json: @user_workout,serializer: nil
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
		# byebug
    User.find(params[:user_id])
    # params.require(:user_workout).permit(:id,:user_id,:workout_id)
  end

  def get_workout
		# byebug
    Workout.find(params[:completedWorkout][:id])
  end

  def find_user_workout
    @user_workout = UserWorkout.find(params[:id])
  end
end
