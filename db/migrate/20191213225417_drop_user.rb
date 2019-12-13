class DropUser < ActiveRecord::Migration[5.2]

    def up
      drop_table :user_workouts
      drop_table :users
    end
    def down
      drop_table :user_workouts
      drop_table :users
    end

end
