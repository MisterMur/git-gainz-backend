class DropUserers < ActiveRecord::Migration[5.2]
  def change
    drop_table :userers
  end
end
