class WorkoutSerializer < ActiveModel::Serializer
  attributes :id,:name,:exercises
  def exercises
    customized_exercises = []

    # object.exercises.each do |exercise|
    #   # Assign object attributes (returns a hash)
    #   # ===========================================================
    #   custom_exercise = exercise.attributes
    #   customized_exercises.push(custom_exercise)
    # end
    #
    # return customized_exercises
  end
end
