class Api::V1::Exercise < ApplicationRecord
  has_many: :Sets
  has_many: :WorkoutExercises
  has_many: :Workouts,through: :WorkoutExercises
end
