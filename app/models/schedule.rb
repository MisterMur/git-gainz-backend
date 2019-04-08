class Schedule < ApplicationRecord
  has_many :user_schedules
  has_many :users, through: :user_schedules

  has_many :workout_schedules
  has_many :workouts,through: :workout_schedules

  accepts_nested_attributes_for :workouts

end
