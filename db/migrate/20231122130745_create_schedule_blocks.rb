class CreateScheduleBlocks < ActiveRecord::Migration[7.1]
  def change
    create_table :schedule_blocks do |t|
      t.time :starting_hour
      t.time :end_hour
      t.integer :week_day
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
