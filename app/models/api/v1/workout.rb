class Api::V1::Workout < ApplicationRecord
  has_many: :WorkoutExercises
  has_many: :Exercises,through: :WorkoutExercises
  has_many: :WorkoutSchedules
  has_many: :Schedules,through: :WorkoutSchedules
end
