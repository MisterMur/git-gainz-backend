class Workout < ApplicationRecord
  has_many :workout_exercises
  has_many :exercises,through: :workout_exercises
  has_many :workout_schedules
  has_many :schedules,through: :workout_schedules

  # accepts_nested_attributes_for :exercises
end
