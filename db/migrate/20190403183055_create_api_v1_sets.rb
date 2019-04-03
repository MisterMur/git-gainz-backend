class CreateApiV1Sets < ActiveRecord::Migration[5.2]
  def change
    create_table :sets do |t|
      t.integer :weight
      t.integer :reps
      t.integer :rest
      t.belongs_to :exercise, foreign_key: true

      t.timestamps
    end
  end
end
