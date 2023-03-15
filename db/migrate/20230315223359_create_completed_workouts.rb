class CreateCompletedWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_workouts do |t|
      t.references :user, foreign_key: true
      t.references :workout, foreign_key: true
      t.datetime :completed_at
      t.timestamps
    end
  end
end
