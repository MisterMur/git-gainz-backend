class CreateApiV1UserSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :user_schedules do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :schedule, foreign_key: true

      t.timestamps
    end
  end
end
