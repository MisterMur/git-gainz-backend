class RenameSetstoCircuits < ActiveRecord::Migration[5.2]
  def change
    rename_table :new_table_name, :circuits
  end
end
