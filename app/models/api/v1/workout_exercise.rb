class Api::V1::WorkoutExercise < ApplicationRecord
  belongs_to :Workout
  belongs_to :Exercise
end
