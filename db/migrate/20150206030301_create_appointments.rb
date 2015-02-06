class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.references :patient, index: true
      t.references :physician, index: true

      t.timestamps null: false
    end
    add_foreign_key :appointments, :patients
    add_foreign_key :appointments, :physicians
  end
end
