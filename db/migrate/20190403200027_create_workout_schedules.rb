class CreateWorkoutSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_schedules do |t|
      t.integer :workout_id, foreign_key: true
      t.integer :schedule_id, foreign_key: true

    end
  end
end
