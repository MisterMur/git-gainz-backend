class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  attr_accessor :workout_snapshot


  # belongs_to :completed_workout, :class_name => 'Workout', :foreign_key => :workout_id
  # has_many :workout_exercises
  # has_many :exercises,through: :workout_exercises
  # has_many :workout_schedules
  # has_many :schedules,through: :workout_schedules
  # has_many :user_workouts
  # has_many :users, through: :user_workouts

  def workout_snapshot

    # dupworkout = workout.dup #shallow copy
    # Marshal.load(Marshal.dump(workout)) #deep copy

    # deep_cloneable
    # w = workout.deep_clone include:[{exercises:[:circuits]}], use_dictionary:true

    workout_clone = workout.amoeba_dup
    # custom_uw[:completed_workout]=uw.workout_snapshot.exercises.collect{|exercise|exercise.slice(:id,:name)}
    # byebug


    # byebug
    # test = Hash.new {|h,k| h[k] = k*k }
    # h.default_proc = proc do |hash, key|
    #   hash[key] = key + key
    #   byebug
    # end
    # byebug

    # self.exercises = workout.exercises
  end

  def get_workout
    Workout.new()
  end

end
