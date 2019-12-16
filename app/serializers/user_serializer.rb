class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:username,:email,:schedules

  def schedules
    customized_schedules = []

    object.schedules.each do |schedule|
      # Assign object attributes (returns a hash)
      # ===========================================================
      custom_schedule = schedule.attributes

      # ===========================================================
      customized_schedules.push(custom_schedule)
    end
    return customized_schedules
  end
end
