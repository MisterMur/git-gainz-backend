class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:username,:email,:schedules,:user_workouts

  def user_workouts
    custom_userworkouts = []
    object.user_workouts.each do |uw|

      custom_uw = uw.attributes
      custom_uw[:name] = uw.workout_snapshot.name
      # uw.workout_snapshot.exercises.collect
      custom_uw[:exercises]=uw.workout.exercises.map do |exercise|

        custom_exercise = exercise.attributes
        customized_exercises=[]
        custom_exercise[:circuits] = exercise.circuits.collect{|circuits| circuits.slice(:id, :reps,:weight,:rest)}

        # ===========================================================
        customized_exercises.push(custom_exercise)[0]
      end
			
      custom_userworkouts.push(custom_uw)
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
