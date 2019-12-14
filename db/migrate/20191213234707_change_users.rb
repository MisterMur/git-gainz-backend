class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :created_at, :datetime, :null => true
    change_column :users, :updated_at, :datetime, :null => true

  end
end
