class CompletedCircuit < ApplicationRecord
    belongs_to :completed_workout
    belongs_to :exercise
  
    validates :weight, presence: true
    validates :reps, presence: true
    validates :rest, presence: true
  end
  