class CreateCompletedCircuits < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_circuits do |t|
      t.integer :weight
      t.integer :reps
      t.integer :rest
      t.integer :exercise_id
      t.references :completed_workout, foreign_key: true
    end
  end
end
