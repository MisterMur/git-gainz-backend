class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  attr_accesor :exercises

  # has_many :workout_exercises
  # has_many :exercises,through: :workout_exercises
  # has_many :workout_schedules
  # has_many :schedules,through: :workout_schedules
  # has_many :user_workouts
  # has_many :users, through: :user_workouts

  def workout_snapshot
    # byebug
    test = Hash.new {|h,k| h[k] = k*k }
    h.default_proc = proc do |hash, key|
      hash[key] = key + key
      byebug
    end
    byebug

    self.name = workout.name
    # self.exercises = workout.exercises


  end

end
