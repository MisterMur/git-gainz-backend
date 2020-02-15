class UserWorkoutSerializer < ActiveModel::Serializer
  attributes :id,:workout,:workout_snapshot

  def workout
    @object.workout
  end 

end
