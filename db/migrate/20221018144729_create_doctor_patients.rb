# frozen_string_literal: true

# db/migrate
class CreateDoctorPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_patients do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.timestamps
    end
  end
end
