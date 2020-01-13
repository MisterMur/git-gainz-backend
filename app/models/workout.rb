class Workout < ApplicationRecord
  has_many :workout_exercises
  has_many :exercises,through: :workout_exercises
  has_many :workout_schedules
  has_many :schedules,through: :workout_schedules
  has_many :user_workouts
  has_many :users, through: :user_workouts

  amoeba do
    enable
    clone [:exercises]
    # include_association :exercises

  end

  # accepts_nested_attributes_for :exercises
end
