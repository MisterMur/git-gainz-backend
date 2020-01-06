class ChangeUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :name, :string
  end
end
