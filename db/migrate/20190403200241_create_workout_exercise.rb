class CreateWorkoutExercise < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_exercises do |t|
      t.integer :workout_id, foreign_key: true
      t.integer :exercise_id, foreign_key: true
    end
  end
end
