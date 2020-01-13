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
   #  customize([
   #   lambda do |orig_obj,copy_of_obj|
   #     # good stuff goes here
   #     byebug
   #   end,
   #
   #   # lambda do |orig_obj,copy_of_obj|
   #   #   # more good stuff goes here
   #   # end
   # ])


  end

  # accepts_nested_attributes_for :exercises
end
