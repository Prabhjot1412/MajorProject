# frozen_string_literal: true

# models
class DoctorPatient < ApplicationRecord
  belongs_to :doctor, foreign_key: 'doctor_id', class_name: 'User'
  belongs_to :patient, foreign_key: 'patient_id', class_name: 'User'
end
