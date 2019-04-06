class ScheduleSerializer < ActiveModel::Serializer
  attributes :id,:name,:workouts
  def workouts
    customized_workouts = []

    object.workouts.each do |workout|
      # Assign object attributes (returns a hash)
      # ===========================================================
      custom_workout = workout.attributes
      custom_workout[:exercises] = workout.exercises.collect{|exercises| exercises.slice(:id, :name)}

      # ===========================================================
      customized_workouts.push(custom_workout)
    end
    return customized_workouts
  end
end
