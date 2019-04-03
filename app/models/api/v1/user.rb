class Api::V1::User < ApplicationRecord
  has_many: :UserSchedules
  has_many: :Schedules, through: :UserSchedules
end
