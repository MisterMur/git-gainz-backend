class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id,:user,:workout,:exercises
  def workout
    custom_workout=@object.workout
  end
  def exercises
    customized_exercises = []
    workout.exercises.each do |exercise|
      # ===========================================================
      custom_exercise = exercise.attributes
      custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice(:id, :reps,:weight,:rest)}

      # ===========================================================
      customized_exercises.push(custom_exercise)
    end
    # byebug
    return customized_exercises
  end

end
