class CreateUserSchedule < ActiveRecord::Migration[5.2]
  def change
    create_table :user_schedules do |t|
      t.integer :user_id, foreign_key: true
      t.integer :schedule_id, foreign_key: true
    end
  end
end
