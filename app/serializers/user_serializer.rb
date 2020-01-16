class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:username,:email,:schedules,:user_workouts

  # def schedules
  #   customized_schedules = []
  #
  #   object.schedules.each do |schedule|
  #     # Assign object attributes (returns a hash)
  #     # ===========================================================
  #     custom_schedule = schedule.attributes
  #
  #     # ===========================================================
  #     customized_schedules.push(custom_schedule)
  #     # by ebug
  #   end
  #   return customized_schedules
  #
  # end
  def exercises
    customized_exercises = []
    workout.exercises.each do |exercise|
      # ===========================================================
      custom_exercise = exercise.attributes
      custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice(:id, :reps,:weight,:rest)}

      # ===========================================================
      customized_exercises.push(custom_exercise)
    end
    # byebug
    return customized_exercises
  end
  def user_workouts
    custom_userworkouts = []
    object.user_workouts.each do |uw|
      # byebug

      custom_uw = uw.attributes
      custom_uw[:exercises]=uw.workout_snapshot.exercises.collect do |exercise|
        custom_exercise = exercise.attributes
        customized_exercises=[]
        custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice(:id, :reps,:weight,:rest)}

        # ===========================================================
        customized_exercises.push(custom_exercise)

      end

      # custom_uw[:completed_workout][:ex=uw.workout_snapshot.exercises.collect{|exercise|exercise.slice(:id,:name)}


      custom_userworkouts.push(custom_uw)
      # byebug
    end
    return custom_userworkouts
  end

  def schedules
    customized_schedules= []

    object.schedules.each do |schedule|
      # Assign object attributes (returns a hash)
      # ===========================================================
      custom_schedule= schedule.attributes
      custom_schedule[:workouts] = schedule.workouts.collect{|workouts| workouts.slice(:id, :name)}


      customized_schedules.push(custom_schedule)

    end
    return customized_schedules
  end
end
