class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id,:name,:workout_snapshot#,:workout

  # def workout
  #   @object.workout
  # end
	def name
		@object.workout.name
	end

	def workout_snapshot
		custom_workoutsnapshot = []

		object.workout_snapshot.exercises.map do |exercise|
			custom_exercise = exercise.attributes
			customized_exercises=[]
			custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice( :reps,:weight,:rest)}
			custom_exercise[:muscles]= exercise.muscles.collect{|muscles|muscles.slice(:name)}
			# byebug

			custom_workoutsnapshot.push(custom_exercise)
		end
		return custom_workoutsnapshot
	end




end
