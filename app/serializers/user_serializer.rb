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
  def user_workouts
    custom_userworkouts = []
    object.user_workouts.each do |uw|
      custom_uw = uw.attributes
      custom_uw[:workout_snapshot]=uw.exercises.collect{|exercise|exercise.slice(:id,:name)}
      custom_userworkouts.push(custom_uw)
    end
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
