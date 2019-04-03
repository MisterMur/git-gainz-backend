class CreateApiV1WorkoutSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_schedules do |t|
      t.belongs_to :schedule, foreign_key: true
      t.belongs_to :workout, foreign_key: true

      t.timestamps
    end
  end
end
