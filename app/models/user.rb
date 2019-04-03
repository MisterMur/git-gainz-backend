class User < ApplicationRecord
  has_many :user_schedules
  has_many :schedules, through: :user_schedules
end
