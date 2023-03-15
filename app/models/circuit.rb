class Circuit < ApplicationRecord
	belongs_to :exercise
	has_many :completed_circuits
	has_many :completed_workouts, through: :completed_circuits
end
  