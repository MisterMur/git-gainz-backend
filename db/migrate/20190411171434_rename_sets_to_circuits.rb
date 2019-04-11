class RenameSetsToCircuits < ActiveRecord::Migration[5.2]
  def change
    rename_table :sets, :circuits


  end
end
