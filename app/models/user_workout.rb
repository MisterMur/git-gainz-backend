class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  attr_accessor :workout_snapshot


  def workout_snapshot
    workout_clone = workout.amoeba_dup
  end

	def muscle_sets_data
		count_muscle_sets = Hash.new(0)
		workout_snapshot.exercises.map do |exercise|
			exercise.circuits.map do |circuit|
				exercise.muscles.each do |muscle|
					count_muscle_sets[muscle.name]+=1
				end
			end
		end
		count_muscle_sets
	end

	def muscle_reps_data
		count_muscle_reps = Hash.new(0)
		workout_snapshot.exercises.map do |exercise|
			exercise.circuits.map do |circuit|
				exercise.muscles.each do |muscle|
					count_muscle_reps[muscle.name]+=circuit.reps
				end
			end
		end
		count_muscle_reps
	end

  def get_workout
    Workout.new()
  end

end
