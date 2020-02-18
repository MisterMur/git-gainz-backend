class RemoveCreatedAtFromMuscles < ActiveRecord::Migration[5.2]
  def change
    remove_column :muscles, :created_at, :datetime
		remove_column :muscles, :updated_at, :datetime

  end
end
