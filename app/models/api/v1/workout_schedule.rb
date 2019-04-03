class Api::V1::WorkoutSchedule < ApplicationRecord
  belongs_to :Schedule
  belongs_to :Workout
end
