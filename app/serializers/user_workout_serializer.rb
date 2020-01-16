class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id,:workout,:workout_snapshot
  def workout
    # byebug
    @object.workout
  end
  # def exercises
  #   customized_exercises = []
  #
  #   object.exercises.each do |exercise|
  #     # Assign object attributes (returns a hash)
  #     # ===========================================================
  #     custom_exercise = exercise.attributes
  #     # custom_exercise[:exercises] = exercise.exercises.collect{|exercises| exercises.slice(:id, :name)}
  #
  #     # ===========================================================
  #     customized_exercises.push(custom_exercise)
  #   end
  #   return customized_exercises
  # end
end
