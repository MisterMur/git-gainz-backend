class CreateTableExercisesMuscle < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_muscles do |t|
      t.integer :muscle_id, foreign_key: true
      t.integer :exercise_id, foreign_key: true
    end
  end
end
