class CreateApiV1Schedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name

      t.timestamps
    end
  end
end
