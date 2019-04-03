class CreateWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_exercises do |t|
      t.belongs_to :workout, foreign_key: true
      t.belongs_to :exercise, foreign_key: true

    end
  end
end
