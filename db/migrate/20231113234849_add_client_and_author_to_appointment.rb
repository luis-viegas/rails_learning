class AddClientAndAuthorToAppointment < ActiveRecord::Migration[7.1]
  def change
    add_reference :appointments, :client, null: false, foreign_key: { to_table: :users }
    add_reference :appointments, :author, null: false, foreign_key: { to_table: :users }
  end
end
