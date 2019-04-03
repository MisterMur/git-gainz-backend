class Api::V1::Schedule < ApplicationRecord
  has_many: :UserSchedules
  has_many: :Users, through: :UserSchedules

  has_many: :WorkoutSchedules
  has_many: :Workouts,through: :WorkoutSchedules

end
