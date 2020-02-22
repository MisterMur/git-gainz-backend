class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id,:name,:exercises#,:workout,

  # def workout
  #   @object.workout.exercises
  # end
	def name
		@object.workout.name
	end
	def exercises
		workout_snapshot
	end

	def workout_snapshot
		custom_workoutsnapshot = []

		object.workout_snapshot.exercises.map do |exercise|
			custom_exercise = exercise.attributes
			customized_exercises=[]
			custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice( :reps,:weight,:rest)}
			custom_exercise[:muscles]= exercise.muscles.collect{|muscles|muscles.slice(:name)}

			custom_workoutsnapshot.push(custom_exercise)
		end
		return custom_workoutsnapshot
	end




end
