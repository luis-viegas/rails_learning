class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :startTime
      t.integer :duration

      t.timestamps
    end
  end
end
