class CreateSets < ActiveRecord::Migration[5.2]
  def change
    create_table :sets do |t|
      t.integer :weight
      t.integer :reps
      t.integer :rest
      t.integer :exercise_id, foreign_key: true
    end
  end
end
