class AddColumnToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :muscle, :string
  end
end
