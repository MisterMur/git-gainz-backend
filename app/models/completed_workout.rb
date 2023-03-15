# app/models/completed_workout.rb

class CompletedWorkout < ApplicationRecord
    belongs_to :user
    belongs_to :workout
    has_many :completed_circuits, dependent: :destroy
  
    validates :completed_at, presence: true
  end
  