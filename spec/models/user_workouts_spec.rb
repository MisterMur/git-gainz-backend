require 'rails_helper'

RSpec.describe UserWorkouts, type: :model do
  context "relations setup properly" do

    it "has a user" do
      u=User.new(id:1,email:'test@me.com',password:'123456')
      w = Workout.new(id:1,name:'Strength')
      uw = UserWorkout.new(user_id:u.id,workout_id:w.id)
      expect (userworkout.user).to eq u
    end
  end
  context "have same values as workout" do
    it "has same name as workout" do
      u=User.new(id:1,email:'test@me.com',password:'123456')
      w = Workout.new(id:1,name:'Strength')
      userworkout = UserWorkout.new(user_id:u.id,workout_id:w.id)
      expect (userworkout.name).to eq userworkout.workout.name
    end
  end
  pending "add some examples to (or delete) #{__FILE__}"
end
