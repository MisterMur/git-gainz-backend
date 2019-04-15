class User < ApplicationRecord
  has_many :user_schedules
  has_many :schedules, through: :user_schedules
  has_many :user_workouts
  has_many :workouts,through: :user_workouts
end
