class Api::V1::UserSchedule < ApplicationRecord
  belongs_to :User
  belongs_to :Schedule
end
