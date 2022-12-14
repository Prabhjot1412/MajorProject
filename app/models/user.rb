class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :patient, class_name: 'DoctorPatient', foreign_key: 'patient_id'
  has_many :doctor, class_name: 'DoctorPatient', foreign_key: 'doctor_id'
  has_one :avatar
  enum :user_type, %i[patient doctor admin], default: 'patient'

  def get_av
    return avatar.avatar if avatar.present?
    return Avatar.first.avatar
  end
end
