class DoctorController < ApplicationController
  def index
    @doctors = User.where(user_type: 'doctor')
  end
end
