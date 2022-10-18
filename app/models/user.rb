class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :patient, class_name: 'DoctorPatient'
  has_one :doctor, class_name: 'DoctorPatient'

end
