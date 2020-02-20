class Exercise < ApplicationRecord
  has_many :circuits
  has_many :workout_exercises
  has_many :workouts,through: :workout_exercises


	has_many :exercise_muscles
	has_many :muscles, through: :exercise_muscles

	amoeba do
		enable
		clone [:muscles,:circuits]
	end

end
